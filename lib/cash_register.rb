require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(employee_discount = nil)
    @total = 0
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
#    @new_total = 0
    @total += (price * quantity)
  end

  def apply_discount
    @total = @total * (100 - @discount) / 100
    "After the discount, the total comes to $#{@total}."
  end

end
