require 'statement'
require 'account'

describe 'features' do

  before :each do
    @account = Account.new
    @statement = Statement.new
    @date = Date.today.strftime("%d/%m/%Y")
  end
  
  it 'formats the statements correctly' do 
    expect(@statement.record).to contain_exactly("date  || credit  || debit  || balance")
  end
end

describe 'features' do

  before :each do
    @account = Account.new
    @date = Date.today.strftime("%d/%m/%Y")
  end
    
  it 'will print statements' do
    @account.deposit(10)
    @account.deposit(50)
    expect(@account.print_statement).to contain_exactly("date  || credit  || debit  || balance", "date 25/03/2020 || credit 10.00 || debit 0.00 || balance 10.00", "date 25/03/2020 || credit 50.00 || debit 0.00 || balance 60.00")
  end

  it 'will withdraw' do
    @account.deposit(40)
    @account.withdraw(10)
    expect(@account.print_statement).to contain_exactly("date  || credit  || debit  || balance", "date 25/03/2020 || credit 40.00 || debit 0.00 || balance 40.00", "date 25/03/2020 || credit 0.00 || debit 10.00 || balance 30.00")
  end

  it 'will deposit after a withdraw' do
    @account.deposit(40)
    @account.withdraw(10)
    @account.deposit(20)
    expect(@account.print_statement).to contain_exactly("date  || credit  || debit  || balance", "date 25/03/2020 || credit 40.00 || debit 0.00 || balance 40.00", "date 25/03/2020 || credit 0.00 || debit 10.00 || balance 30.00", "date 25/03/2020 || credit 20.00 || debit 0.00 || balance 50.00")
  end 
end
  