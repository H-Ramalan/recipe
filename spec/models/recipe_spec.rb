require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:recipe_foods).with_foreign_key('recipe_id') }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:preparation_time) }
    it { should validate_presence_of(:cooking_time) }
    it { should validate_presence_of(:user_id) }
    # it { should validate_presence_of(:public) }
  end
end
