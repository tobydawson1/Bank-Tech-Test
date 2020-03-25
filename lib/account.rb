class Account 

  attr_reader :balance, :deposit_amount, :withdraw_amount, :statements, :date
  
  def initialize()
    @balance = 0
    @date
    @statements = nil
    @statement = Statement.new
  end

  def push_statement
     @statement.create_statement(@date, "#{@deposit_amount.to_f}0", "#{@withdraw_amount.to_f}0", "#{@balance.to_f}0")
    @statements = @statement.record
  end

  def deposit(value)
    reset_variables
    @transaction = Transaction.new(value)
    @deposit_amount = @transaction.amount
    @date = @transaction.date
    @balance += @deposit_amount
    push_statement
  end

  def withdraw(value)
    reset_variables
    @transaction = Transaction.new(value)
    @withdraw_amount = @transaction.amount
    @date = @transaction.date 
    @balance -= @withdraw_amount
    push_statement
  end   

  def reset_variables
    @withdraw_amount = 0
    @date = nil
    @deposit_amount = 0
  end

  def print_statement
    @statements.each{ |s|
        puts s 
    }
  end

end
