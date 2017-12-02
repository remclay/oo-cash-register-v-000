require 'pry'

class CashRegister
  attr_accessor :items, :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @items.fill(title, @items.size, quantity)
    @last_transaction = (price * quantity)
    @total += @last_transaction
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

#  def items
#    @items
#  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
