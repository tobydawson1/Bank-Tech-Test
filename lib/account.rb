class Account 

    attr_reader :balance, :deposit_amount, :withdraw_amount, :statements, :date

    def initialize()
        @balance = 0
        @statements = []
    end

    def print_statement(date = @date, credit = @deposit_amount, debit = @withdraw_amount, balance = @balance)
        @statements << "date #{date} || credit #{credit} || debit #{debit} || balance #{balance}"
    end

    #def print_statement2
    #    @statments.each do |s|
    #        puts s 
    #    end
    #end

    def deposit(value)
        @withdraw_amount = nil
        @transaction = Transaction.new(value)
        @deposit_amount = @transaction.amount
        @date = @transaction.date
        @balance += @deposit_amount
    end

    def withdraw(value)
        @deposit_amount = nil
        @transaction = Transaction.new(value)
        @withdraw_amount = @transaction.amount 
        @balance -= @withdraw_amount
    end
    
end
