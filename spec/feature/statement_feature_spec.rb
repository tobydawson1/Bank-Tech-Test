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
    expect(@account.print_statement).to contain_exactly("date  || credit  || debit  || balance", "#{@date} || 10.00 ||  || 10.00", "#{@date} || 50.00 ||  || 60.00")
  end

  it 'will withdraw' do
    @account.deposit(40)
    @account.withdraw(10)
    expect(@account.print_statement).to contain_exactly("date  || credit  || debit  || balance", "#{@date} || 40.00 ||  || 40.00", "#{@date} ||  || 10.00 || 30.00")
  end

  it 'will deposit after a withdraw' do
    @account.deposit(40)
    @account.withdraw(10)
    @account.deposit(20)
    expect(@account.print_statement).to contain_exactly("date  || credit  || debit  || balance", "#{@date} || 40.00 ||  || 40.00", "#{@date} ||  || 10.00 || 30.00", "#{@date} || 20.00 ||  || 50.00")
  end 
end
  