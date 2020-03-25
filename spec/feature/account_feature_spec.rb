require 'account'

describe 'features' do

  before :each do
    @account = Account.new
    @date = Date.today.strftime("%d/%m/%Y")
  end

  it 'can print a bank statement' do 
    expect(@account.statements()).to contain_exactly("date  || credit  || debit  || balance")
  end

  it 'will update balance when deposit' do
    @account.deposit(10)
    expect(@account.statements).to contain_exactly("date  || credit  || debit  || balance", "date #{@date} || credit 10 || debit  || balance 10")
  end

  it 'will update balance when withrawal' do
    @account.deposit(10)
    @account.withdraw(5)
    expect(@account.statements).to contain_exactly("date  || credit  || debit  || balance", "date #{@date} || credit 10 || debit  || balance 10", "date #{@date} || credit  || debit 5 || balance 5")
  end

  it 'can desposit twice' do
    @account.deposit(1000)
    @account.deposit(130)
    expect(@account.balance).to equal(1130)
  end

  it 'can withdraw 1000' do
    @account.deposit(1000)
    @account.deposit(130)
    @account.withdraw(1000)
    expect(@account.balance).to equal(130)
  end

  it 'can withdraw twice' do
    @account.deposit(1000)
    @account.deposit(130)
    @account.withdraw(1000)
    @account.withdraw(80)
    expect(@account.balance).to equal(50)
  end

  it 'will print statements' do
    @account.deposit(10)
    expect(@account.print_statement).to contain_exactly("date  || credit  || debit  || balance", "date #{@date} || credit 10 || debit  || balance 10")
  end
end
