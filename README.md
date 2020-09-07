# Requirements
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

# How to run and install.
in your terminal, type: 
rspec --init  _(initiates a spec, spec_helper file)_
bundle init _(Gemfile created)_
Add necessary gems to the file
Run 'bundle' _(for Gemfile.lock)_

## How to run the test
To run the test in irb, change the terminal environment to irb by simply typing in `irb`

To run RSpec, type `rspec` in your command line.


## User story
```
As a user,
So I can deposit money,
I have an account with a bank

As a user,
So I am not hoarding money in my purse,
I would like to deposit money

As a user,
So can save money for a well deserved holiday after this bootcamp,
I would like to deposit a total of 1000.

As a user,
So I can keep track of when I deposited my money,
I would like to know the date

As a user,
Due to Corona Virus, I can save a lot more now,
I would like to deposit another 2000 into my account

As a user,
So I can keep track of when I deposited my money,
I would like to know the date

As a user,
Even in Corona times, there are still a few projects to do,
I will like to be able to withdraw 500 on 14-01-2012

As a user,
So I can see all my activities,
I would like to be able to print out a full statement of all my actions - deposits/withdrawals, date, and amount
```