## Requirements
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## How to run and install.
In your terminal, type: 
- rspec --init  _(initiates a spec, spec_helper file)_
- bundle init _(Gemfile created)_
- Add necessary gems to the file
- Run 'bundle' _(for Gemfile.lock)_

## How to run the test
To run the test in irb, change the terminal environment to irb by simply typing in `irb`

To run RSpec, type `rspec` in your command line.

## How to test coverage
Insert the below into line 1 of your spec_helper
```
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
                      SimpleCov::Formatter::Console,
                      #To see the HTML grid
                      SimpleCov::Formatter::HTMLFormatter
                                                               ])
SimpleCov.start
```

## User story
```
As a user,
So I can deposit money into an account,
I have created an account with my bank

As a new user,
I have no money deposited in my account yet,
Hence my account is empty

As a user,
So I am not hoarding money in my purse,
I would like to deposit an amount of 1000.00 into my account

As a user,
So I can keep track of when I deposited into my account,
I would like to know the date is 10-01-2012

As a user,
Due to Corona Virus, I was able to save a lot more than before,
I would like to deposit another 2000 into my account

As a user,
So I can keep track of when I deposited into my account,
I would like to know the date is 13-01-2012

As a user,
I would like to withdraw from time to time,
I will like to be able to withdraw 500 from my account

As a user,
So I can keep track of when I deposited into my account,
I would like to know the date is 14-01-2012

As a user,
To be accountable,
I would like to be able to print out a statement

As a user,
So I can see all my activities,
I would like to be able to print out a full statement of all my actions newest first - deposits/withdrawals, date, and amount
```
### Test
[![Image from Gyazo](https://i.gyazo.com/0e976dda626492daf127f5c22bd85061.png)](https://gyazo.com/0e976dda626492daf127f5c22bd85061)

### Coverage
[![Image from Gyazo](https://i.gyazo.com/72ccb9f55fb3be1f2dfd4b681add8de9.png)](https://gyazo.com/72ccb9f55fb3be1f2dfd4b681add8de9)

