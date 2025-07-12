// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {Test, console} from "forge-std/Test.sol";
import {Pyro} from "../src/Pyro.sol";

contract PyroTest is Test {
    Pyro public pyro;
   
    error EnforcedPause();

    function setUp() public {
        pyro = new Pyro("Pyro token", "Pyro",10_000_000_000 ether);
    }

    function testDecimals() public view {
        assertEq(pyro.decimals(), 18);
    }

    function testName() public view {
        assertEq(pyro.name(), "Pyro token");
    }

    function testSymbol() public view {
        assertEq(pyro.symbol(), "Pyro");
    }

    function testMint() public {
        uint mintAmount = 300_000_000 ether;
        pyro.mint(address(1), mintAmount);
        assertEq(pyro.balanceOf(address(1)), mintAmount);
    }
    function testBurn() public {
        pyro.mint(address(1), 10 ether);
        uint totalSupply = pyro.totalSupply();
        vm.prank(address(1));
        pyro.burn(5 ether);
        
        assertEq(pyro.totalSupply(), totalSupply - 5 ether);
        assertEq(pyro.balanceOf(address(1)), 5 ether);
    }

 

    function testRevertOwnableUnauthorizedAccount() public {
        vm.prank(address(1));
        vm.expectRevert();
        pyro.mint(address(1), 1_000_000 ether);

    }




   function testPaused() public {
        (address alice, ) = makeAddrAndKey("alice");
        pyro.mint(alice, 100_000_000 ether);

        pyro.pause();
        assertEq(pyro.paused(), true);
                
        vm.prank(alice);
        vm.expectRevert(EnforcedPause.selector);
        pyro.transfer(address(2), 1 ether);


        pyro.unpause();
        assertEq(pyro.paused(), false);


                
        vm.prank(alice);
        pyro.transfer(address(2), 1 ether);

    }

  

}
