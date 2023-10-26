FactoryBot.define do
  factory :recipe_food do
    quantity { 500 }
  end
end

FactoryBot.define do
  factory :user do
    name { 'Hamza' }
    email { 'lazo9ja@gmail.com.com' }
    password { '123456' }
  end
end

FactoryBot.define do
  factory :food do
    name { 'Tuwo' }
    measurement_unit { 'lb' }
    price { 20 }
    quantity { 1000 }
    user
  end
end

FactoryBot.define do
  factory :recipe do
    name { 'Recipe 1' }
    preparation_time { 4 }
    cooking_time { 5 }
    description { 'Very good recipe' }
    public { true }
    user
  end
end

FactoryBot.define do
  factory :public_recipe, class: 'Recipe' do
    name { 'Public Recipe' }
    preparation_time { 15 }
    cooking_time { 25 }
    description { 'A public recipe' }
    public { true }
    user
  end
end
