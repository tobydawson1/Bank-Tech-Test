require 'transaction'
require 'date'

describe Transaction do

    before :each do
        @transaction = Transaction.new(100)
    end

    it 'can be instantialized' do
        expect(@transaction).to be_an_instance_of(Transaction)
    end

    it 'should take a amount' do
        expect(@transaction.amount).to equal(100)
    end

    it 'should generate a matching date' do
        expect(@transaction.date).to eq(Date.today.to_s)
    end

    it 'should contain a balance' do
        expect(@transaction.balance).to eq(0)
    end

end
