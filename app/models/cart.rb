class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items

  def add(item)
  	cart_items = item
  	save
	end

end
