class User < ApplicationRecord
	has_many :carts

	def cart
		carts.where(active: true).last
	end

end
