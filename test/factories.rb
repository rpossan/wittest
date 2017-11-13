FactoryBot.define do
  factory :joao, class: User do
    name "João"
  end

  factory :diogo, class: User do
    name "Diogo"
  end

  factory :book_learn, class: Product do
    name "Learn RoR - Beginner"
    price 24.99
  end

  factory :book_mastering, class: Product do
    name "Mastering RoR - Level over 9000"
    price 90001
  end

  factory :item, class: CartItem do
    quantity 10

  end

end