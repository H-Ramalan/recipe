require 'rails_helper'

RSpec.feature 'Recipe#index Page', type: :feature do
  let(:recipe) { create(:recipe) }
  before do
    visit recipes_path
  end

  scenario 'user can remove their recipe' do
    user = create(:user)
    login_as(user, scope: :user)
    visit recipes_path
    expect(page).not_to have_button('Remove', exact: true)
  end

  scenario 'user can add a new recipe' do
    user = create(:user)
    login_as(user, scope: :user)
    visit recipes_path
    expect(page).to have_button('Add Recipe', exact: true)
  end

  scenario 'user can view their own private and public recipes' do
    user = create(:user)
    login_as(user, scope: :user)
    recipe = create(:recipe, user:)
    visit recipes_path
    expect(page).to have_content(recipe.name)
  end
end
