// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter counter;

    function setUp() public {
        counter = new Counter();
    }

    function testGetNumber() public {
        assertEq(counter.getNumber(), 0);
    }

    function testSetNumber() public {
        counter.setNumber(10);
        assertEq(counter.getNumber(), 10);
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.getNumber(), 1);
    }

    function testDecrement() public {
        counter.setNumber(10);
        counter.decrement();
        assertEq(counter.getNumber(), 9);
    }
}