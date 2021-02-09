class Account

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance 
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end
end