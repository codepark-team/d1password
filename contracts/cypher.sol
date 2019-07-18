pragma solidity ^ 0.5.0;

contract Cypher {
    
    mapping(address => mapping(string => string)) notebook;

    function save(string memory _key, string memory _value) public {
         notebook[msg.sender][_key] = _value;
    }

    function find(address _owner, string memory _key) public view returns (string memory) {
        return notebook[_owner][_key];
    }

}