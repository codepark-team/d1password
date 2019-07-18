pragma solidity ^ 0.5.0;

contract Cypher {
    
    mapping(address => mapping(string => string)) notebook;

    function save(string memory _key, string memory _value) public {
         notebook[msg.sender][_key] = _value;
    }

    function find(string memory _key) public returns (string memory) {
        return notebook[msg.sender][_key];
    }

}