// SPDX-License-Identifier: GPL-3.0 
pragma solidity >=0.7.0 <0.9.0; 
contract Test { 
    string str; 
    constructor(string memory str_in) { 
        str = str_in; 
    } 
    function str_out() public view returns(string memory) { 
        return str; 
    } 

} 

// SPDX-License-Identifier: GPL-3.0 
pragma solidity >=0.7.0 <0.9.0;

contract Test { 
    function joinString(string memory sl, string memory s2) public pure returns (string memory) { 
        return string.concat(sl, s2); 
    }
} 

// SPDX-License-Identifier: GPL-3.0 
pragma solidity >=0.7.0 <0.9.0; 

contract String { 
    string store = "abcdef"; 
    event LogMessage(string msg, string value); 
    
    function getStore() public view returns (string memory) {
        return store; 
    } 
    function setStore(string memory _value) public {
        store =_value;
    }
    function logStore() public { 
        emit LogMessage("Value of the store is", store); 
    }
} 


