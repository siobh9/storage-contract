// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.19;

contract StorageContract {
    string public content;
    address public creator;

    error OnlyCreatorCanUpdateContent();

    constructor(string memory content_) {
        content = content_;
        creator = msg.sender;
    }

    function setContent(string memory newContent) public {
        if (msg.sender != creator) revert OnlyCreatorCanUpdateContent();
        content = newContent;
    }
}
