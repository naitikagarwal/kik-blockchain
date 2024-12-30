// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Cal {
    int256 result = 0;

    function add(int256 num) public {
        result += num;
    }

    function subtract(int256 num) public {
        result -= num;
    }
    
    function multiply(int256 num) public {
        result *= num;
    }

    function divide(int256 num) public {
        require(num != 0, "Cannot divide by zero");
        result /= num;
    }


    function Remainder(int256 num) public {
        require(num != 0, "Cannot do with zero");
        result %= num;
    }

    function reset() public {
        result = 0;
    }

    function get() public view returns (int256) {
        return result;
    }
}
