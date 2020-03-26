class Account
  attr_reader :balance, :deposit_amount, :withdraw_amount, :statements, :date
  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def push_statement(deposit, withdraw)
    @deposit_amount = deposit
    @withdraw_amount = withdraw
    @statement.create_statement(@date = Date.today.strftime("%d/%m/%Y"), @deposit_amount, @withdraw_amount, "#{@balance.to_f}0")
    @statements = @statement.record
  end

  def deposit(value)
    @transaction = Transaction.new(value)
    @deposit_amount = @transaction.amount
    @balance += @deposit_amount
    push_statement("#{@deposit_amount.to_f}0", nil)
  end

  def withdraw(value)
    @transaction = Transaction.new(value)
    @withdraw_amount = @transaction.amount
    @balance -= @withdraw_amount
    push_statement(nil, "#{@withdraw_amount.to_f}0")
  end


  def print_statement
    @statements.each { |s| puts s }
  end
end
