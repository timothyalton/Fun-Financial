import React, {useState, useEffect} from 'react';

const SignUp = ()=> {

    const [account, setAccount] = useState({account: "parent"})
  
    const [loginInfo, setLogin] = useState({})
    



    const handleChange = (e) =>{
        // console.log(e.target)
    //    const {name, value} = e.target
    //    useEffect(()=>{setLogin({...loginInfo, [name]: value})})
    //    console.log(setLogin)
    setLogin({...loginInfo, [e.target.name]: e.target.value})
    }

    const newUser = (e) => {
        // e.preventDefault()
        console.log(e)
    //     fetch('http://localhost:3000/user_signup', {
    //         method: "POST",
    //         headers: {
    //             "Content-Type": "application/json"
    //         },
    //         body: JSON.stringify({
    //            email: state.email,
    //            username: state.username,
    //            password: state.password,
    //            family_id: state.familyId,
    //            role: state.account === "parent" ? 0 : 1          
    //         })
    //     })
    //     .then(resp => resp.json())
    //     .then(console.log)
    }

    // useEffect(()=> console.log(loginInfo))

    return(
        <div>
            <h2>Signup</h2>
            <hr/>
            <form onSubmit={(e)=>newUser(e)}>  
                <label>Email:  </label>
                <input onChange={(e)=> handleChange(e)} name="email" type="text" placeholder="enter valid email" /><br/>
                <label>First Name:  </label>
                <input onChange={(e)=> handleChange(e)} name="firstname" type="text" placeholder="enter valid email" /><br/>
                <label>Last Name:  </label>
                <input onChange={(e)=> handleChange(e)} name="lastname" type="text" placeholder="enter valid email" /><br/>
                <label>UserName:  </label>
                <input onChange={(e)=> handleChange(e)} name="username" type="text" placeholder="enter a username" /><br/>
                <label>Password:  </label>
                <input onChange={(e)=> handleChange(e)} name="password" type="password" placeholder="enter a password" /><br/>
                <label>Accout Type:  </label>
                <select onChange={(event)=> setAccount(event.target.value === "gaurdian" ? "parent" : "child")}name="account">
                    {/* <option value="default">--select account type--</option> */}
                    <option value="gaurdian" >Parent</option>
                    <option value="dependent">Child</option>
                </select><br/>
                    {account === "child" ? <div>
                        <label>Famild ID:  </label>
                        <input onChange={(e)=> handleChange(e)}name="familyId" type="text" placeholder="enter family ID"/>
                    </div> : null}
                <input type="submit" />
            </form>
        </div>
    )
}

export default SignUp;