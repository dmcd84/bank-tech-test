# bank-tech-test

Week 10 at Makers Academy, tech test week.

First attempt at a solo tech test.

## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
### Approach

Using an OOD and TDD approach, an account was created with the ability to take deposits, allow withdrawals and return the balance. Additional to the requirements, an error message can be raised if there are insufficient funds available to make a withdrawal. Following this the Statement class was created with the intention of 'printing' the transaction history. It was at this point the transaction class was created to record the details of each transaction; used to populate an array to be used by the Statement printer.

### Usage

Before use you will need to open terminal (or equivalent), clone this repo and use the commands below to use the 'bank account'.
```
git clone git@github.com:dmcd84/bank-tech-test.git
cd bank-tech-test
bundle install
```

Then in irb or another REPL, after navigating to the project folder above(bank-tech-test):
```
require './lib/account.rb'
account = Account.new
```
This will create an account which can make use of the following commands:
```
account.balance
account.deposit(amount)
account.withdraw(amount)
account.print_statement
```
