require 'rails_helper'

RSpec.describe 'recipe_foods/edit', type: :view do
  before(:each) do
    @recipe_food = assign(:recipe_food, RecipeFood.create!(
                                          quantity: 1,
                                          food: nil,
                                          recipe: nil
                                        ))
  end

  it 'renders the edit recipe_food form' do
    render

    assert_select 'form[action=?][method=?]', recipe_food_path(@recipe_food), 'post' do
      assert_select 'input[name=?]', 'recipe_food[quantity]'

      assert_select 'input[name=?]', 'recipe_food[food_id]'

      assert_select 'input[name=?]', 'recipe_food[recipe_id]'
    end
  end
end
