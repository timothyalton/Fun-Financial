import React from 'react';
import './App.css';

import {BrowserRouter, Route, Switch} from 'react-router-dom'
import SignUp from './components/SignUp'
import Login from './components/Login'


const App = () => {
  return (
    <BrowserRouter>
      <div>
        <Route exact path="/login" component={Login} />
       <Route exact path="/signup" component = {SignUp} />
      </div>
    </BrowserRouter>
    
  );
}

export default App;
