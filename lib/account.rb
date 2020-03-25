class Account 

  attr_reader :balance, :deposit_amount, :withdraw_amount, :statements, :date
  
  def initialize()
    @balance = 0
    @date
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

  def variable_reset
    @withdraw_amount = nil
    @date =nil
    @deposit_amount = nil
  end

  def deposit(value)
    variable_reset
    @transaction = Transaction.new(value)
    @deposit_amount = @transaction.amount
    @date = @transaction.date
    @balance += @deposit_amount
    create_statement
  end

  def withdraw(value)
    variable_reset
    @transaction = Transaction.new(value)
    @withdraw_amount = @transaction.amount
    @date = @transaction.date 
    @balance -= @withdraw_amount
    create_statement
  end   
end
