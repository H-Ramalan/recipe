require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  describe 'associations' do
    it { should belong_to(:recipe).class_name('Recipe').with_foreign_key('recipe_id') }
    it { should belong_to(:food).class_name('Food').with_foreign_key('food_id') }
  end

  describe 'validations' do
    it { should validate_presence_of(:quantity) }
    it { should validate_numericality_of(:quantity).only_integer.is_greater_than_or_equal_to(0) }

    it { should validate_presence_of(:recipe_id) }
    it { should validate_numericality_of(:recipe_id).only_integer.is_greater_than_or_equal_to(0) }

    it { should validate_presence_of(:food_id) }
    it { should validate_numericality_of(:food_id).only_integer.is_greater_than_or_equal_to(0) }
  end
end
