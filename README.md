# Bank tech test

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.


# How to run

### For testing please type

Rspec

### For running the program

IRB 

### Example

![Image description](link-to-image)

# Specification

## Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Acceptance criteria

* Given a client makes a deposit of 1000 on 10-01-2012
* And a deposit of 2000 on 13-01-2012
* And a withdrawal of 500 on 14-01-2012
* When she prints her bank statement
* Then she would see

```
* date || credit || debit || balance
* 14/01/2012 || || 500.00 || 2500.00
* 13/01/2012 || 2000.00 || || 3000.00
* 10/01/2012 || 1000.00 || || 1000.00
```

## Inputs / Outputs

| Input                           | Output                                                                                         | 
| ------------------------------- | ------------------------------------------------------------   | 
| New Account object              | print_statement should print "date &#124;&#124; credit &#124;&#124; debit &#124;&#124; balance" |
| ------------------------------- | ------------------------------------------------------------  | 
| Account.desposit(1)             | print_statement should print "date &#124;&#124; credit &#124;&#124; debit &#124;&#124; balance  |
|                                 | /n 01/01/2020 &#124;&#124; 1.00 &#124;&#124; &#124;&#124; 1.00"                                |
| ------------------------------- | ------------------------------------------------------------   | 
| Account.desposit(1)             | print_statement should print "date &#124;&#124; credit &#124;&#124; debit &#124;&#124; balance  |
|                                 |                              /n 02/01/2020 &#124;&#124; 1.00 &#124;&#124; &#124;&#124; 2.00    |
|                                 |                              /n 01/01/2020 &#124;&#124; 1.00 &#124;&#124; &#124;&#124; 1.00"   |
| ------------------------------- | ------------------------------------------------------------   | 
| Account.withdraw(1) | print_statement should print "date &#124;&#124; credit &#124;&#124; debit &#124;&#124; balance  |
|                                 |                              /n 03/01/2020 &#124;&#124; &#124;&#124; 1.00 &#124;&#124; 1.00    | 
|                                 |                              /n 02/01/2020 &#124;&#124; 1.00 &#124;&#124; &#124;&#124; 2.00    |
|                                 |                              /n 01/01/2020 &#124;&#124; 1.00 &#124;&#124; &#124;&#124; 1.00"   |

## Functions and Methods

| Object:          | Account                                            | 
| ---------------- | -------------------------------------------------- | 
| **Properties:**  | statement, balance                                 |
| **Function:**    | print_statement                                     |
| **Function:**    | Deposit                                            |  
| **Function:**    | Withdrawal                                         |  

## User Stories

```
As a user, 
So I can store money safely
I would like to be able to deposit
```


```
As a user,
So I can receive my stored money 
I would like to be able to withdraw
```

```
As a user
so I can track and see my withdraws, deposits and money
I would like to be able to see my statements
```
