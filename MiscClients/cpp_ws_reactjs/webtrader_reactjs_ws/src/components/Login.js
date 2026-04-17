// DistributedATS - Mike Kipnis (c) 2022

import React from 'react';
import { useState } from 'react';

import { Row, Col } from 'react-bootstrap/';

const Login = React.forwardRef ((props, ref) => {

  const [name, setName] = useState('');
  const [password, setPassword] = useState('');


  const handleName = (e) => {
    setName(e.target.value);
  };

  const handlePassword = (e) => {
    setPassword(e.target.value);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    if (name === '' || password === '') {
      return;
    }

    const logon_value = {
      username: name,
      password,
    };

    props.logonCallback(logon_value);
  };
  const infoMessage = () => {
    return (
      <div
        className={
            props.loginState.text === "Ready to trade" ? 'header_ready_to_trade' : ''
        }>
          {props.loginState.text}
      </div>
    );
  };

  return (
      <Row style={{width:"100%", marginTop:"10px"}}>
        <Col style={{width:"50%", margin:"10px"}}>
             <h4 className="nav--logo_text"> DistributedATS - WebTrader </h4>
             <h6> {infoMessage()}</h6>
        </Col>
        <Col  style={{width:"50%", margin:"20px"}}>
        <form className="Form-Login">
        <div style={(props.loginState?.sessionStateCode ?? 0) !== 0 ? {pointerEvents: "none", opacity: "0.4"} : {}}>
      <label className="label" style={{marginRight: '10px'}} >Username</label>
      <input className="input" style={{marginRight: '10px'}} value={name} onChange={handleName} type="text" />

      <label className="label" style={{marginRight: '10px'}}>Password</label>
      <input className="input" style={{marginRight: '10px'}} value={password} onChange={handlePassword} type="password" />

      <button onClick={handleSubmit} type="submit" className="btn btn-link">
        Login
      </button>
      </div>
    </form>
      </Col>
    </Row>
  );
});

export default Login;
