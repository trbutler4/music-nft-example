// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract TwoStepNFT is ERC721Enumerable {
    constructor() ERC721("TwoStepNFT", "2STEP") {}


}
