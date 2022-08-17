pragma solidity >=0.4.22 <0.9.0;

contract ExpensesList {
    uint public expensesCount = 0;

    struct Expenses {
        uint id;
        string name;
        string date;
    }

    mapping(uint => Expenses) public expenses;

    constructor() public {
        createExpenses("Transportation", "2022-08-05"); 
    }

    function createExpenses(string  memory name, string memory date) public {
        expensesCount++;
        expenses[expensesCount] = Expenses(expensesCount, name, date );
    }
}