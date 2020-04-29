import React, { useState, useEffect } from 'react'

import MainParentContainer from  './MainParentContainer'
import MainChildContainer from  './MainChildContainer'

const MainContainer = () => {
    
    
    
    return(
        <div>
            Main Container
        <MainParentContainer />
        <MainChildContainer />
        </div>
    )
}

export default MainContainer;