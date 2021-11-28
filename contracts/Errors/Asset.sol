// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Asset {
    string public state = "onSale";
    
    error StateNotDefined(uint unit);

    event ChangeName(address editor, string newName);

    function changeState(uint newState) public {
        //require(newState == 0 || newState == 1, 'This state is not defined');
        if(newState == 0){
            state = 'onSale';
        }else if(newState == 1){
            state = 'notForSale';
        }else{
            revert StateNotDefined(newState);
       }
    }
}
