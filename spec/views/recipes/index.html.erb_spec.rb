require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        name: "Name",
        preparation_time: 2,
        cooking_time: 3,
        description: "MyText",
        public: false,
        user: nil
      ),
      Recipe.create!(
        name: "Name",
        preparation_time: 2,
        cooking_time: 3,
        description: "MyText",
        public: false,
        user: nil
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
