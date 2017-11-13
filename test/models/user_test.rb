require 'test_helper'

class UserTest < ActiveSupport::TestCase
	  
  setup do
    @diogo = create(:diogo)
    @product = create(:book_learn)
    @cart = Cart.create(user: @diogo)
  end

  test 'diogo is diogo' do
    assert_equal @diogo.name, 'Diogo'
  end

  test 'Create cart' do
  	joao = create(:joao)
  	assert Cart.create user: joao
  end

  test 'add item' do
  	item = CartItem.new(product: @product, quantity: 10)
	end


end
