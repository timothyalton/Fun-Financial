import React, {useState} from 'react';
import { render } from 'react-dom';
import {withRouter} from 'react-router-dom';


const Login = (props)=> {

    const nextPath = (path) => {
        props.history.push(path);
        // console.log(props)
    }

    return(
        <div>
            <h2>Login</h2>
            <form onSubmit={null}>
                <label>User Name</label>
                <input onChange={null} name="username" type="text" />
                <br/>
                <label>Password</label>
                <input onChange={null} name="password" type="password" />
                <br/>
                <input type="submit" value="Login" />
            </form>
            <button onClick={()=> nextPath('/signup')}>Sign Up</button>
        </div>
    )
}

export default Login;