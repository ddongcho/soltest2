// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract Airlines {
    address chairperson;
    struct details {
        uint escrew;
        uint status;
        uint hashOfDetails;

    }

    mapping (address=>datails) public balanceDetails;
    mapping (address=>uint) membership;

    //수정자 또는 규칙
    modifer onlyChairperson{
        require(msg.sender==chairperson)
        _;
    }
    modifer onlyMember {
        require(membership[msg.sender]==1)
        _;
    }

    //생성자 함수
    constructor() public payable {
        chairperson=msg.sender;
        membership[msg.sender]=1;
        balanceDetails[msg.sender].escrew = msg.value
    }
}