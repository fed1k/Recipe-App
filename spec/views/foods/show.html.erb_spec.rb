require 'rails_helper'

RSpec.describe 'foods/show', type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
                            name: 'Name',
                            measurement_unit: 'Measurement Unit',
                            price: 2,
                            quantity: 3,
                            user: nil
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Measurement Unit/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
