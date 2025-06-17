// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract Election {
  // model a candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }
  // read/write candidates
  mapping( uint => Candidate ) public candidates;


  // store candidates count
  uint public candidatesCount;


  // Constructor
  constructor() {
    addCandidate( "Candidate 1" );
    addCandidate( "Candidate 2" );
  }

  // add candidate to participate the election
  function addCandidate( string memory _name ) private {
    candidatesCount++;
    candidates[ candidatesCount ] = Candidate( candidatesCount, _name, 0 );
  }
}

