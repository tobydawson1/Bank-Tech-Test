class Statement
  attr_reader :withdraw_amount, :deposit_amount, :date, :record

  def initialize
    @record = ['date  || credit  || debit  || balance']
  end

  def create_statement(date, credit, debit, balance)
    @record << "#{date} || #{credit} || #{debit} || #{balance}"
  end
end
