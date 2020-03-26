require 'account'

describe Account do

  before :each do
    @account = Account.new
  end

  it 'starts with a balance of 0' do
    expect(@account.balance).to equal(0)
  end

  it 'can take a deposit' do
    @account.deposit(10)
    expect(@account.deposit_amount).to eq("10.00")
  end

  it 'can withdraw money' do
    @account.withdraw(10)
    expect(@account.withdraw_amount).to eq("10.00")
  end

  it 'will update balance when deposit' do
    @account.deposit(10)
    expect(@account.balance).to eq(10.00)
  end

  it 'will update balance when deposit' do
    @account.deposit(10)
    @account.withdraw(5)
    expect(@account.balance).to eq(5)
  end
end
