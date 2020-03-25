class Statement
  attr_reader :withdraw_amount, :deposit_amount, :date, :record

  def initialize
    @record = ["date  || credit  || debit  || balance"]
  end
  
  def create_statement(date = @date, credit = "#{@deposit_amount.to_f}0", debit = "#{@withdraw_amount.to_f}0", balance = "#{@balance.to_f}0")
    @record << "date #{date} || credit #{credit} || debit #{debit} || balance #{balance}"
  end

end
