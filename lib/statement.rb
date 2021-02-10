# frozen_string_literal: true

class Statement
  def headers
    'date || credit || debit || balance'
  end

  def print_statement(account)
    transaction_history = account.transaction_history
    transactions = format_transactions(transaction_history)
    headers.to_s + transactions.to_s
  end

  def format_transactions(transaction_history)
    transactions = ''
    transaction_history.reverse_each do |transaction|
      if transaction.type == 'deposit'
        transactions += "\n#{transaction.date} || #{transaction.amount} || || #{transaction.account_balance}"
      else
        transaction.type == 'credit'
        transactions += "\n#{transaction.date} || || #{transaction.amount} || #{transaction.account_balance}"
      end
    end
    transactions
  end
end
