defmodule Account do

  # Client
  def new(balance \\ 0) do
    fun = fn() -> loop(balance) end

    spawn(fun)
  end

  def deposit(pid, amount) do
    send(pid, {:deposit, amount})
  end

  def withdraw(pid, amount) do
    send(pid, {:withdraw, amount})
  end

  def balance(pid) do
    send(pid, {:balance, self})

    receive do
      { :balance, balance } -> balance
    after 1000 ->
      "timeout"
    end
  end

  # Server
  def loop(balance) do
    receive do
      { :deposit, amount } ->
        loop(balance + amount)

      { :withdraw, amount } ->
        loop(balance - amount)

      { :balance, parent } ->
        send parent, {:balance, balance}

        loop(balance)
    end
  end
end
