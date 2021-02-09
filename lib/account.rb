require 'date'

class Account

  attr_reader :balance, :transaction_history

  def initialize(balance = 0.00)
    @balance = balance.to_f
    @transaction_history = []
  end

  def transaction(type, amount, date = Date.today.to_s)
    update_balance(amount, type)
    record_transaction(type, balance, amount, date)
  end

  # def deposit(money)
  #   @balance += money
  # end

  # def withdraw(money)
  #   @balance -= money
  # end

  private

  def record_transaction(type, balanced, amount, date)
    transaction = Transaction.new(type, balance, amount, date)
    transaction_history.push(transaction)
  end

  def update_balance(amount, type)
    if type == 'withdraw'
      @balance -= amount
    elsif type == 'deposit'
      @balance += amount
    end
  end
end