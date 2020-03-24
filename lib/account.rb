class Account 

    attr_reader :balance, :deposit_amount, :withdraw_amount, :statements, :date

    def initialize()
        @balance = 0
        @statements = ["date  || credit  || debit  || balance"]
    end

    def create_statement(date = @date, credit = @deposit_amount, debit = @withdraw_amount, balance = @balance)
        @statements << "date #{date} || credit #{credit} || debit #{debit} || balance #{balance}"
    end

    def print_statement
        @statements.each{ |s|
            puts s 
        }
    end

    def deposit(value)
        @withdraw_amount = nil
        @transaction = Transaction.new(value)
        @deposit_amount = @transaction.amount
        @date = @transaction.date
        @balance += @deposit_amount
        create_statement
    end

    def withdraw(value)
        @deposit_amount = nil
        @transaction = Transaction.new(value)
        @withdraw_amount = @transaction.amount 
        @balance -= @withdraw_amount
        create_statement
    end
    
    def date
        @date = Date.today.strftime("%d/%m/%Y")
      end

end
