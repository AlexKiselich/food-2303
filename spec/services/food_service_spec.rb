require "rails_helper"

RSpec.describe FoodService do
  it "establishes a connection for searched foods" do

    foods = FoodService.new.search("sweet potato")
    expect(foods).to be_a(Hash)
  end
end