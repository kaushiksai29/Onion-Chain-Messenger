// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/**
 * @title Messenger
 * @author Your Name
 * @notice A simple, decentralized smart contract for sending and receiving messages.
 */
contract Messenger {
    // A struct to hold message details
    struct Message {
        address sender;
        string content;
        uint256 timestamp;
    }

    // A mapping from a user's address to an array of messages they have received
    mapping(address => Message[]) private receivedMessages;

    /**
     * @notice Sends a message to a recipient.
     * @param _recipient The address of the user who will receive the message.
     * @param _content The text content of the message.
     */
    function sendMessage(address _recipient, string memory _content) public {
        // Ensure the recipient is a valid address
        require(_recipient != address(0), "Cannot send to zero address");

        // Push the new message to the recipient's message array
        receivedMessages[_recipient].push(Message({
            sender: msg.sender,
            content: _content,
            timestamp: block.timestamp
        }));
    }

    /**
     * @notice Retrieves all messages sent to the caller of this function.
     * @return An array of Message structs.
     */
    function getMyMessages() public view returns (Message[] memory) {
        // msg.sender is the address of the user calling this function
        return receivedMessages[msg.sender];
    }
}
