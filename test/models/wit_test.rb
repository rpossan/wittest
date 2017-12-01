require 'test_helper'
require 'byebug'

class WitTest < ActiveSupport::TestCase
	  
  setup do
    @diogo = create(:diogo)
    @joao = create(:joao)
    @learn = create(:book_learn)
    @mastering = create(:book_mastering)
    @diogo_cart = Cart.create(user: @diogo)
    @joao_cart = Cart.create(user: @joao)
  end

  test 'Diogo add 10 books of Learn Ror - Beginner to cart' do
    item = CartItem.new(product: @learn, quantity: 10)
    @diogo_cart.add item
    assert_equal @diogo_cart.total_items, 10
  end

  test 'After 1 day Diogo add more 2 Learn Ror - Beginner to cart' do

	end

  test 'Joao has added 2 Mastering RoR - Level over 9000 to cart' do

  end

  test 'Diogo total cart price is 9300.88' do

  end

  test 'Diogo has 12 Learn ROR ans 1 Mastering in his cart' do

  end

  test 'Cart System has 15 items in overall' do

  end

  test 'Cart System has a total of XXX pending in cart' do

  end


end
