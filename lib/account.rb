class Account 

    attr_reader :balance, :amount

    def initialize()
        @balance = 0
        @statements = []
    end

    def print_statement(date = nil, credit = nil, debit = nil, balance = @balance)
        @statements << "date #{date} || credit #{credit} || debit #{debit} || balance #{balance}"
    end

    def deposit(value)
        @transaction = Transaction.new(value)
        @amount = @transaction.amount 
    end

    def withdraw(value)
        @transaction = Transaction.new(value)
        @amount = @transaction.amount 
    end
end