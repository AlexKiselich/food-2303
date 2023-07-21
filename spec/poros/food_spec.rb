require "rails_helper"

RSpec.describe Food do
  it "has attributes" do
    data = {
      gtinUpc: 123432,
      description: "Sweet Potatos",
      brandOwner: "Craft",
      ingredients: "more potatoes"

    }

    food = Food.new(data)

    expect(food.code).to eq(123432)
    expect(food.description).to eq("Sweet Potatos")
    expect(food.brand).to eq("Craft")
    expect(food.ingredients).to eq("more potatoes")
  end
end