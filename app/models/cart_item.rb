class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  def total
  	quantity * price
	end

end
