
pragma solidity ^0.8.0;

contract Voting {
    mapping(address => bool) public voters;
    mapping(string => uint256) public votesReceived;
    string[] public candidateList;

    constructor(string[] memory candidateNames) {
        candidateList = candidateNames;
    }

    function voteForCandidate(string memory candidate) public {
        require(!voters[msg.sender], "You have already voted!");
        require(isValidCandidate(candidate), "Not a valid candidate!");
        votesReceived[candidate]++;
        voters[msg.sender] = true;
    }

    function totalVotesFor(string memory candidate) public view returns (uint256) {
        require(isValidCandidate(candidate), "Not a valid candidate!");
        return votesReceived[candidate];
    }

    function isValidCandidate(string memory candidate) public view returns (bool) {
        for (uint i = 0; i < candidateList.length; i++) {
            if (keccak256(abi.encodePacked(candidate)) == keccak256(abi.encodePacked(candidateList[i]))) {
                return true;
            }
        }
        return false;
    }
}
