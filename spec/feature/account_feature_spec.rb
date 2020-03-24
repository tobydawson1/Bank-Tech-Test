require 'account'

describe 'features' do

    before :each do
        @account = Account.new
        @date = Date.today.to_s
    end

    it 'can print a bank statement' do 
        expect(@account.print_statement()).to contain_exactly("date  || credit  || debit  || balance 0")
    end

    it 'will update balance when deposit' do
        @account.deposit(10)
        @account.print_statement()
        expect(@account.statements).to contain_exactly("date #{@date} || credit 10 || debit  || balance 10")
    end

    it 'will update balance when withrawal' do
        @account.deposit(10)
        @account.print_statement()
        @account.withdraw(5)
        @account.print_statement()
        expect(@account.statements).to contain_exactly("date #{@date} || credit 10 || debit  || balance 10", "date #{@date} || credit  || debit 5 || balance 5")
    end

end