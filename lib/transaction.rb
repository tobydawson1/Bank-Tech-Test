require 'date'

class Transaction
  attr_reader :amount, :date, :balance

  def initialize(value = 0, date = Date.today.strftime('%d/%m/%Y'), balance = 0)
    @amount = value
    @date = date
    @balance = balance
  end
end
