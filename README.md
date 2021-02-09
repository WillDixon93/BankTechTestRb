# Bank Tech Test #

Requirements

You should be able to interact with your code via a REPL (irb)

Deposits, withdrawal
Account statement (date, amount, balance) printing
Data can be kept in memory (it doesn't need to be stored to a database)

## User Stories ##

### MVP ###

``` 
As a user
So that I know how much money I have
I want to be able to see my bank balance

As a user 
So that I can pay for things in cash
I want to be able to withdraw money

As a user
So that I can save money
I want to be able to deposit money. 
```

### Account Statements ###
```

```

Irb - cd into lib
require './account.rb'
account = Account.new
account.balance
account.deposit
account.withdraw