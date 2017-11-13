require 'test_helper'

class CartTest < ActiveSupport::TestCase
	include FactoryBot::Syntax::Methods
  
  setup do
    @diogo = build_stubbed(:diogo)
    
  end
end
