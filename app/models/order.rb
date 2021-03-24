class Order < ApplicationRecord
	has_many :order_items
    before_save :set_subtotal




    def subtotal

    	if (order_items.size < 5 ) 
        order_items.collect{|order_item| order_item.valid? ? order_item.unit_price*order_item.quantity : 0}.sum

    	else
    	order_items.collect{|order_item| order_item.valid? ? order_item.unit_price*order_item.quantity : 0}.sum * 0.85
    	end
    
    end



    private

    def set_subtotal
        self[:subtotal] = subtotal
    end
end
