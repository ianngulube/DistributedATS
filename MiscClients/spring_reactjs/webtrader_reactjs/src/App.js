
// DistributedATS - Mike Kipnis (c) 2022
import logo from './logo.svg';
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import Login from './components/Login';
import PositionsAndMarketData from './components/PositionsAndMarketData';
import Ticket from './components/Ticket';
import History from './components/History';
import PriceLevels from './components/PriceLevels';
import SessionStateWrapper from './components/SessionStateWrapper';
import React from 'react';
import { useEffect, useState, useMemo } from 'react';
import { Container, Row, Col } from 'react-bootstrap/';

import helpers from './components/helpers';



const { forwardRef, useRef, useImperativeHandle } = React;

function App()
{
  const ticketRef = React.useRef();
  const histRef = React.useRef();
  const marketDataAndPositionsRef = React.useRef();

  const url = window.location.origin;
  //const url = 'http://localhost:8080';

  const last_sequence_number = useRef(0); // sequence number between front-end and rest controller
  const last_session_state = useRef(null);
  const current_ticket = useRef(null);


  const [sessionToken, setSessionToken] = useState(null);
  const [sessionState, setSessionState] = useState(null);
  const [ticketState, setTicketState] = useState({instrumentName:"N/A",price:0,quantity:0,username:"",token:""});
  const [loginState, setLoginState] = useState({sessionStateCode:0,text:"Please login"});
  const [blotterData, setBlotterData] = useState([]);
  const [orderCancelData, setOrderCancelData] = useState({});
  const [histData, setHistData] = useState([]);
  const [priceLevels, setPriceLevels] = useState([]);


  const Logon_callback = (logon_value) =>
  {
    console.log("[DEBUG] Sending login request to", url + '/Login', "with", logon_value);
    const requestOptionsResults = { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(logon_value) };
    fetch(url + '/Login', requestOptionsResults) .then(res => res.json())
    .then(result => {
      console.log("[DEBUG] Login response received:", result);
      setSessionToken(result);
    })
    .catch(err => {
      console.error("[DEBUG] Login error:", err);
        var invalid_state = {};
        invalid_state["text"] = 'Unable to connect to the server';
        setLoginState(invalid_state);
      });
  }

  const Populate_ticket = ( ticket_data ) =>
  {
      ticket_data.url = url;

      if ( last_session_state.current !== null )
      {
        ticket_data.token = last_session_state.current.token;
        ticket_data.username = last_session_state.current.username;

        current_ticket.current = ticket_data;
      }

      setTicketState( ticket_data );

      if ( ticket_data.instrumentData != null  )
      {
        var price_levels = helpers.get_price_levels(ticket_data.instrumentData);
        setPriceLevels(price_levels);
      }
  }

  const Submit_cancel = (cancel_order) =>
  {
    var cancel_out = {};

    cancel_out["token"] = last_session_state.current.token;
    cancel_out["username"] = last_session_state.current.username;
    cancel_out["side"] = cancel_order.side;
    cancel_out["orderKey"] = cancel_order.orderKey;
    cancel_out["securityExchange"] = cancel_order.securityExchange;
    cancel_out["symbol"] = cancel_order.symbol;

    const requestOptionsResults = { method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(cancel_out) };
    fetch(url + '/CancelOrder', requestOptionsResults) .then(res => res.json())
    .then(result => setOrderCancelData(result))
    .catch(err => {console.log(err)});
  }

  useEffect(() => {
    console.log("Hist Data : " + histData );
  },[histData]);

  useEffect(() => {
    console.log("Order Cancel Data : " + orderCancelData );;
  },[orderCancelData]);

  useEffect(() => {

    if ( sessionToken !== null )
    {
        const token = sessionToken?.token ?? sessionToken?.Token;
        const username = sessionToken?.username ?? sessionToken?.Username ?? sessionToken?.user ?? sessionToken?.User ?? '';

        console.log("sessionToken : " + token);

        if (!token) {
          setLoginState({ sessionStateCode: -1, text: 'Invalid login response from the server' });
          return;
        }

        const session_state_request = {
          token,
          stateMask: 0,
          maxOrderSequenceNumber: 0,
          marketDataSequenceNumber: 0,
          activeSecurityList: [],
        };

        setTicketState(prev => ({ ...prev, username, token }));

        const requestOptionsResults = { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(session_state_request) };
        fetch(url + '/SessionState', requestOptionsResults) .then(res => res.json())
        .then(result => setSessionState(result))
        .catch(err => {
          setLoginState({ sessionStateCode: -1, text: 'Disconnected from the server' });
          setSessionState(null);
        });
    }

  }, [sessionToken]);

  useEffect(() => {

    if ( sessionState !== null  )
    {
      console.log("[DEBUG] Session State received:", {
        sessionState: sessionState.sessionState,
        activeSecurityListLength: sessionState.activeSecurityList?.length || 0,
        activeSecurityList: sessionState.activeSecurityList,
        instrumentMarketDataSnapshotKeys: Object.keys(sessionState.instrumentMarketDataSnapshot || {}).length,
        positionsMapKeys: Object.keys(sessionState.positionsMap || {}).length,
      });

      last_session_state.current = sessionState;

      const token = sessionToken?.token ?? sessionToken?.Token;
      const session_state_request = { token };

      const session_state_wrapper = new SessionStateWrapper(sessionState, session_state_request);

      setLoginState({ ...session_state_wrapper.get_logon_state(), sessionStateCode: sessionState.sessionState });

        if ( sessionState.sessionState == 1 ) // This session is active
        {
          var blotter_data = session_state_wrapper.get_market_data_and_positions();
          console.log("[DEBUG] Blotter data populated:", Object.keys(blotter_data).length, "instruments", blotter_data);

          setBlotterData(blotter_data);

          marketDataAndPositionsRef.current.update_data();

          setHistData(session_state_wrapper.get_hist_data(histData, last_sequence_number));

          if ( current_ticket.current != null )
          {

            var instrument_data = blotter_data[current_ticket.current.instrumentName];
            if ( instrument_data != null )
            {
              var price_levels = helpers.get_price_levels(instrument_data);
              setPriceLevels(price_levels);
            }
          }

      }

      if ( sessionState.sessionState != 3 )
      {
        const intervalId = setInterval(() => {
                console.log("[DEBUG] Polling SessionState endpoint with request:", session_state_request);
                const requestOptionsResults = { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(session_state_request) };
                fetch(url + '/SessionState', requestOptionsResults) .then(res => res.json())
                .then(result => {
                  console.log("[DEBUG] SessionState polling response:", result);
                  setSessionState(result);
                })
                .catch(err => {
                  console.error("[DEBUG] SessionState polling error:", err);
                  var invalid_state = {};
                  invalid_state["text"] = 'Disconnected from the server';
                  setLoginState(invalid_state);
                  setSessionState(null);
                });
              }, 1000)

              return () => {
                clearInterval(intervalId);
              }
        } else {

        }
    } else {
      console.log("Session State is Null");
    }

  }, [sessionState]);

  return (
    <div className="body">
    <div className="ag-theme-balham-dark">
      <nav>
        <Login loginState={loginState} logonCallback={Logon_callback} sessionState={sessionState}/>
      </nav>
      <Container fluid style={{marginTop:20}}>
      {sessionState && sessionState.sessionState == 1 && (!sessionState.activeSecurityList || sessionState.activeSecurityList.length === 0) && (
        <div style={{ padding: '10px', backgroundColor: '#fff3cd', borderRadius: '4px', marginBottom: '10px' }}>
          <strong>No instruments available.</strong> The server returned an empty security list. Check that the DataService is running and returning securities.
        </div>
      )}
      <div style={( sessionState == null || sessionState.sessionState != 1 || sessionState.activeSecurityList == null ) ? {pointerEvents: "none", opacity: "0.4"} : {}}>
        <Row>
        <Col  sm={8}>
          <div>
            <PositionsAndMarketData blotterData={blotterData} ticketState={ticketState} marketDataCallback={Populate_ticket} ref={marketDataAndPositionsRef}/>
          </div>
          <div>
            {blotterData && Object.keys(blotterData).length > 0 ? "Click on the instrument to trade." : "(Waiting for instruments...)}"}
          </div>
        </Col>
        <Col  sm={4}>
            <Ticket ticketState={ticketState} priceLevels={priceLevels} ref={ticketRef}/>
        </Col>
        </Row>
      <div style={{marginTop: '10px'}}>
        <History histData={histData} blotterData={blotterData} ref={histRef} orderCancelCallback={Submit_cancel}/>
      </div>
      </div>
      </Container>
        </div>
      </div>
  );
}

export default App;
