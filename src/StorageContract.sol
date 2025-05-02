// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.19;

import "@openzeppelin/access/Ownable.sol";

contract StorageContract is Ownable {
    string public content;

    constructor(string memory content_) Ownable() {
        content = content_;
    }

    function setContent(string memory newContent) public onlyOwner {
        content = newContent;
    }
}
