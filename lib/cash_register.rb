require "pry"
#if no gem file install gem to use pry run - gem install pry

class CashRegister


    attr_accessor :total, :discount, :items, :transaction

    def initialize(discount=0)
        @discount = discount
        @items = []
        @total = 0
    end
    
    #barebones getter - attr_reader
    # def discount
    #     #binding.pry
    #     @discount
    # end

    #barebones setter - attr_writer
    # def discount=(discount) 
    #     @discount = discount
    # end

    def add_item(title, price, quantity=1)
        @title = title
        @price = price
        @quantity = quantity
        self.transaction = price * quantity
        self.total += self.transaction
        quantity.times do #times returns all the numbers from 0 to one less than the number itself
            self.items << title
        end

    end

    def apply_discount
        if self.discount!= 0
            discount = (100.0 - self.discount.to_f) / 100 #gets the discount and changes it to float using .to_f
            self.total = (self.total * discount).to_i #use .to_i to change to integer
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.transaction
    end

end