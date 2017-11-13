class User < ApplicationRecord
	has_many :carts

	scope :cart, -> { where(active: true) }
end
