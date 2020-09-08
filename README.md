## Requirements
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

## How to run and install.
In your terminal, type: 
rspec --init  _(initiates a spec, spec_helper file)_
bundle init _(Gemfile created)_
Add necessary gems to the file
Run 'bundle' _(for Gemfile.lock)_

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
I would like to deposit money into my account

As a user,
So can save money for a well deserved holiday after this bootcamp,
I would like to deposit a total of 1000 into my savings account.

As a user,
So I can keep track of when I deposited into my account,
I would like to know the date

As a user,
Due to Corona Virus, I was able to save a lot more than before,
I would like to deposit another 2000 into my account

As a user,
So I can keep track of when I deposited into my account,
I would like to know the date

As a user,
Even in Corona times, there are still a few projects I would like to complete but it costs,
I will like to be able to withdraw 500 from my account

As a user,
To be accountable,
I would like to be able to print out a statement

As a user,
So I can see all my activities,
I would like to be able to print out a full statement of all my actions - deposits/withdrawals, date, and amount
```
### Test
[![Image from Gyazo](https://i.gyazo.com/d81f8569b5431a5441dd55f3c7b10889.png)](https://gyazo.com/d81f8569b5431a5441dd55f3c7b10889)

### Coverage
[![Image from Gyazo](https://i.gyazo.com/72ccb9f55fb3be1f2dfd4b681add8de9.png)](https://gyazo.com/72ccb9f55fb3be1f2dfd4b681add8de9)

