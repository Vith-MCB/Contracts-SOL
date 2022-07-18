// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//Contract structure of storage
contract Storage {

    /* Atividade 1 */
   int data; //int variable
   function set(int x) public {
      data = x; //set value for data
   }
   function get() public view returns (int) {
      return data; //returns data
   }
}