// SPDX-License-Identifier: MIT
pragma solidity >=0.7.3;

contract test {
    event UpdatedMessages(string oldStr, string newStr);

    string public message;

    constructor (string memory initMessage) {
        message = initMessage;
    }

    function update(string memory newMsg) public {
        string memory oldMsg = message;
        message = newMsg;
        emit UpdatedMessages(oldMsg, newMsg);
    }

}