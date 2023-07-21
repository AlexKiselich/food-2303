require "rails_helper"

RSpec.describe FoodFacade do
  describe 'search' do
    it "returns an array of food objects" do

      food_facade = FoodFacade.new
      foods = food_facade.search("sweet potatoes")

      expect(foods).to be_an(Array)
    end
  end

  describe "total hits" do
    it "returns the total number of hits for a searched item" do


      food_facade = FoodFacade.new
      foods_total_hits = food_facade.total_hits("sweet potatoes")

      expect(foods_total_hits).to eq(55579)
    end
  end
end