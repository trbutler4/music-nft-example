// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";

contract TwoStepNFT is ERC721Enumerable, Ownable {

    uint256 public tokenId;

    constructor() ERC721("TwoStepNFT", "2STEP") {}

    function mint(address to, string memory tokenURI) external payable {
        require(msg.value >= 0.008 ether, "minimum 0.008 ether required to mint");
        require(nextTokenId < 10000, "token limit reached");

        _safeMint(to, tokenId);
        _setTokenURI(tokenId, tokenURI);
        tokenId++;
    }

}
