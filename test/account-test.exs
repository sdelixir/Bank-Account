Code.require_file("./account.exs")
Code.require_file("./test/basic-test.exs")

BasicTest.test "Account.new",
  _expected = true,
  _actual   = Kernel.is_pid Account.new

BasicTest.test "Account.balance",
  _expected = 0,
  _actual   = (
    account = Account.new
    Account.balance(account)
    )

BasicTest.test "Account.deposit",
  _expected = 100,
  _actual   = (
    account = Account.new
    Account.deposit(account, 100)
    Account.balance(account)
    )

BasicTest.test "Account.withdraw",
  _expected = 50,
  _actual   = (
    account = Account.new
    Account.deposit(account, 100)
    Account.withdraw(account, 50)
    Account.balance(account)
    )
