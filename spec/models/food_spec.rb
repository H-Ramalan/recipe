require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:recipe_foods).with_foreign_key('food_id') }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }

    it { should validate_presence_of(:measurement_unit) }

    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price).only_integer.is_greater_than_or_equal_to(0) }

    it { should validate_presence_of(:quantity) }
    it { should validate_numericality_of(:quantity).only_integer.is_greater_than_or_equal_to(0) }
  end
end
