class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items

  scope :total_items, -> { where(active: true).joins(:cart_items).size }
  scope :actives, -> { where(active: true)}

  def self.overall_items
  	summary = 0
  	actives.each{|cart| summary += cart.cart_items.pluck(:quantity).sum}
  	return summary
	end

  def self.pending_amount
  	summary = 0
  	actives.each do |cart|
  		summary += cart.total
		end
		return summary
	end

  def self.total_items
		where(active: true).joins(:cart_items).size
	end

  def total
  	t = 0
  	cart_items.each do |item|
  		t += item.total
		end
		return t
  end

  def total_items
  	cart_items.size
	end

  def add(item)
  	cart_items << item  	
	end

end
