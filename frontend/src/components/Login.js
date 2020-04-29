import React, {useState} from 'react';
import { render } from 'react-dom';

const Login = ()=> {

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
            <button>Sign Up</button>
        </div>
    )
}

export default Login;