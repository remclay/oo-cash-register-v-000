require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(employee_discount = nil)
    @total = 0
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    @new_total += (price * quantity)
  end

  def apply_discount
    
  end
  
end
