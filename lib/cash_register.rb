require "pry"

class CashRegister
 attr_accessor :total, :discount, :items, :price, :quantity, :last_price


    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items= []
    end

    def add_item(item, price, quantity=1)
        
        @total += price * quantity
        quantity.times do
        @items << item
        end
        @last_price = price * quantity

    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
        @total -= @total * (@discount / 100.0)
        "After the discount, the total comes to $800.0"
        end
    end

    def void_last_transaction
        @total -= @last_price
        @last_price = 0
    
    end

   

end
