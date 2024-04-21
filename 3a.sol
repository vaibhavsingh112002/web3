// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Array {
    // Several ways to initialize an array
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    uint256[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint256) {
        return arr[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint256 index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }

    function examples() pure external {
     //    create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.20;

contract local {
    uint public count;
    constructor (uint new_count){
        count = new_count;
    }
}


// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.20;

contract x {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
}

contract y {
    string public text;
    constructor(string memory _text) {
        text = _text;
    }
}

contract B is x("input to x"), y("input to y"){

}

contract C is x, y{
    constructor(string memory _name , string memory _text) x(_name) y(_name){}

}

contract D is x, y{
    constructor() x("x is called") y("y is called") {}
}

contract E is x, y{
    constructor() y("x is called") x("y is called") {}
}



