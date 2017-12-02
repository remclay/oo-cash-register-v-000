require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(employee_discount = nil)
    @total = 0
    @title = []
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
#    @new_total = 0
    @title << (title) * quantity
    @total += (price * quantity)
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

end
