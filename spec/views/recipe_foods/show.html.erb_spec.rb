require 'rails_helper'

RSpec.describe 'recipe_foods/show', type: :view do
  before(:each) do
    @recipe_food = assign(:recipe_food, RecipeFood.create!(
                                          quantity: 2,
                                          food: nil,
                                          recipe: nil
                                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
