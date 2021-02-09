require './lib/account.rb'
require './lib/transaction.rb'
 
describe Account do
  let(:account) { Account.new }

  it 'is created with a default balance of 0' do 
    expect(account.balance).to eq(0)
  end

  it 'should show a float balance even if whole number given' do
    expect(account.balance).to be_a(Float)
  end

  it 'returns a balance when called' do
    account.transaction('deposit', 150)
    expect(account.balance).to eq(150)
  end

  describe '#deposit' do 
    it 'returns an updated balance after calling deposit' do
      account.transaction('deposit', 20)
      expect(account.balance).to eq(20)
    end
  end

  describe '#withdraw' do
    it 'returns an updated balance after calling withdraw' do
      account.transaction('deposit', 40)
      account.transaction('withdraw', 10)
      expect(account.balance).to eq(30)
    end

    it 'creates a new transaction object' do 
      account.transaction('withdraw', 10)
      expect(account.transaction_history[-1]).to be_an_instance_of(Transaction)
    end

    it 'should be able to accept a date as an argument' do
      expect { account.transaction('withdraw', 10.50, "01/01/2021") }.not_to raise_error
    end
  end
end