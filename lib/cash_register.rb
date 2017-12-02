require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(employee_discount = nil)
    @total = 0
    @title = []
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    @title.fill(title, @title.size, quantity)
    @most_recent_title = title
    @most_recent_price = (price * quantity)
    @total += @most_recent_price
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @title
  end

  def void_last_transaction
    @total -= @most_recent_price
  end
end
