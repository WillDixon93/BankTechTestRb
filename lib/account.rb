class Account

  attr_reader :balance

  def initialize(balance = 0.00)
    @balance = balance.to_f
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end
end