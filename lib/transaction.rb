require 'date'

class Transaction

    attr_reader :amount, :date, :balance

    def initialize(amount, date = Date.new, balance = 0)
        @amount = amount
        @date = date
        @balance = balance
    end

end
