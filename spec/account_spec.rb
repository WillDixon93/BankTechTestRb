require './lib/account'

describe Account do
  let(:account) { Account.new }

  it 'is created with a default balance of 0' do 
    expect(account.balance).to eq(0)
  end

  it 'should show a float balance even if whole number given' do
    expect(account.balance).to be_a(Float)
  end

  it 'returns a balance when called' do
    account.deposit(150)
    expect(account.balance).to eq(150)
  end

  describe '#deposit' do 
    it 'returns an updated balance after calling deposit' do
      account.deposit(20)
      expect(account.balance).to eq(20)
    end
  end

  describe '#withdraw' do
    it 'returns an updated balance after calling withdraw' do
      account.deposit(40)
      account.withdraw(20)
      expect(account.balance).to eq(20)
    end
  end
end