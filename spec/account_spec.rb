require 'account'

describe Account do

    before :each do
        @account = Account.new
    end

    it 'can be instantialized' do
        expect(@account).to be_an_instance_of(Account)
    end

    it 'starts with a balance of 0' do
        expect(@account.balance).to equal(0)
    end

    it 'can print a bank statement' do 
        expect(@account.print_statement()).to contain_exactly("date  || credit  || debit  || balance 0")
    end

    it 'can take a deposit' do
        @account.deposit(10)
        expect(@account.amount).to eq(10)
    end

    it 'can withdraw money' do
        @account.withdraw(10)
        expect(@account.amount).to eq(10)
    end

end