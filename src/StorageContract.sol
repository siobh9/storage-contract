// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.19;

contract StorageContract {
    string public content;

    constructor(string memory content_) {
        content = content_;
    }

    function setContent(string memory newContent) public {
        content = newContent;
    }
}
