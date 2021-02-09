require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new('example_type', 500) }
  
  it 'is an instance of the Transaction class' do
    expect(transaction).to be_an_instance_of(Transaction)
  end

  it 'has a date associated with it' do
    date_today = Date.today.to_s
    expect(transaction.date).to eq(date_today)
  end

  it 'has a type such as deposit' do 
    expect(transaction.type).to eq('example_type')
  end

  it 'has a value attached' do 
    expect(transaction.amount).to eq('0.00')
  end

  it 'records the balance of the account it is associated with' do 
    expect(transaction.account_balance).to eq(500.00)
  end
end