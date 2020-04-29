import React, {useState} from 'react';

const SignUp = ()=> {

    const [account, setAccount] = useState({account: "parent"})

    // const accountChange = (event)=> {
    //     if (event.tartget.value === "gaurdian") {
    //        return setAccount("parent")
    //     } else if (event.target.value === "dependent") {
    //         return setAccount("child")
    //     } else return null 
    // }

    return(
        <div>
            <h2>Signup</h2>
            <hr/>
            <form onSubmit={null}>  
                <label>Email:  </label>
                <input onChange={null} name="email" type="text" placeholder="enter valid email" /><br/>
                <label>UserName:  </label>
                <input onChange={null} name="username" type="text" placeholder="enter a username" /><br/>
                <label>Password:  </label>
                <input onChange={null} name="password" type="password" placeholder="enter a password" /><br/>
                <label>Accout Type:  </label>
                <select onChange={(event)=> setAccount(event.target.value === "gaurdian" ? "parent" : "child")}name="accout-type">
                    {/* <option value="default">--select account type--</option> */}
                    <option value="gaurdian" >Parent</option>
                    <option value="dependent">Child</option>
                </select><br/>
                    {account === "child" ? <div>
                        <label>Famild ID:  </label>
                        <input name="familyid" type="text" placeholder="enter family ID"/>
                    </div> : null}
                <input type="submit" />
            </form>
        </div>
    )
}

export default SignUp;