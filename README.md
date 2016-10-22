# Bank Account

### Tests

To test this module, run
```
elixir test/account-test.exs
```

## To use this module
### Create a new account
Default balance of 0:
```
iex(1)> account = Account.new
```

Optional starting balance:
```
iex(1)> account = Account.new(100)
```

### Check balance of account
```
iex(1)> account = Account.new(50)
iex(2)> Account.balance(account)
50
```

### Deposit into account
```
iex(1)> account = Account.new(50)
iex(2)> Account.deposit(account, 100)
iex(3)> Account.balance(account)
150
```

### Withdraw from account
```
iex(1)> account = Account.new(100)
iex(2)> Account.withdraw(account, 50)
iex(3)> Account.balance(account)
50
```
