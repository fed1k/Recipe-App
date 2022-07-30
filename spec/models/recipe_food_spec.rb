require 'rails_helper'

RSpec.describe 'RecipeFood', type: :model do
  subject { RecipeFood.new(id: 3, quantity: 6) }
  before { subject.save }

  it 'quantity should not be empty' do
    food = Food.new(id: 1, name: 'Wahala', measurement_unit: 'gram', price: 30, quantity: 3, user_id: 1)
    recipe = Recipe.new(id: 1, name: 'Wahala', preparation_time: 10, cooking_time: 30, description: 'Pizza is delicious',
                        user_id: 1)
    subject.food_id = food.id
    subject.recipe_id = recipe.id
    subject.quantity = nil
    expect(subject).to_not be_valid
  end
end
