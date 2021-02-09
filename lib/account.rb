require 'date'

class Account

  attr_reader :balance, :transaction_history

  def initialize(balance = 0.00)
    @balance = balance.to_f
    @transaction_history = []
  end

  def transaction(type, amount, date = Date.today.to_s)
    update_balance(amount, type)
    date = reformat_date(date)
    balance = reformat_to_2dp_string(@balance)
    amount = reformat_to_2dp_string(amount)
    record_transaction(type, balance, amount, date)
  end

  # def deposit(money)
  #   @balance += money
  # end

  # def withdraw(money)
  #   @balance -= money
  # end

  private

  def record_transaction(type, balance, amount, date)
    transaction = Transaction.new(type, balance, amount, date)
    transaction_history.push(transaction)
  end

  def reformat_to_2dp_string(data)
    "#{'%.2f' % data}"
  end

  def reformat_date(date)
    Date.parse(date).strftime("%d/%m/%Y")
  end

  def update_balance(amount, type)
    if type == 'withdraw'
      @balance -= amount
    elsif type == 'deposit'
      @balance += amount
    end
  end
end