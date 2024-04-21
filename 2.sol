// SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

contract Loop {
    function loop() pure public returns(uint result) {
        for (uint i = 0; i < 10; i++){
            if (i == 3){
                continue;
            }
            if ( i == 5) {
                break;
            }
        }

        uint j;
        while( j < 10 ) {
            j++;
        }
        return j;
    }
}

// SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

contract IfElse {
    function foo(uint _x) public pure returns (uint) {
        if (_x < 10 ){
            return 0;
        } else if ( _x < 20 ) {
            return 1;
        } else {
            return 2;
        }
    }
    function ternary(uint _x ) public pure returns (uint) {
        return _x > 10 ? 1 : 2;
    }
}


// SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

contract ifelseif {
    uint i = 12;
    string result;

    function decision_making() public returns(string memory) {
        if(i < 10){
            result = "less than 10";
        }
        else if (i == 10){
            result = "Equal to 10";
        }
        else {
            result = "Greater than 10";
        }
        return result;
    }
}
