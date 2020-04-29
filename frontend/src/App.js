import React, { useState, useEffect } from 'react';
import './App.css';

import {BrowserRouter, Route, Switch} from 'react-router-dom'
import SignUp from './components/SignUp'
import Login from './components/Login'

import MainContainer from './containers/MainContainer'



const App = () => {
  return (
    <BrowserRouter>
      <div>
      <Route exact path="/profile" render={(routerProps)=> <MainContainer {...routerProps}/>} />
      <Route exact path="/" component= {Login} />
      <Route exact path="/signup" component = {SignUp} />
      
      </div>
    </BrowserRouter>
    
  );
}

export default App;
