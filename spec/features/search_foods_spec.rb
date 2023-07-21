require "rails_helper"

RSpec.describe "Search", type: :feature do
  it "can search for foods by name" do
    # As a user,
    # When I visit "/"
    # And I fill in the search form with "sweet potatoes"
    # (Note: Use the existing search form)
    # And I click "Search"
    # Then I should be on page "/foods"
    # Then I should see a total of the number of items returned by the search.
    # (sweet potatoes should find more than 30,000 results)
    # Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

    # And for each of the foods I should see:
    # - The food's GTIN/UPC code
    # - The food's description
    # - The food's Brand Owner
    # - The food's ingredients


    visit "/"
    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq("/foods")

    # Dream Drive

    expect(page).to have_content("Total number of items returned 55579")

    foods = FoodFacade.new.search("sweet potatoes")

    expect(foods.count).to eq(10)
    expect(page).to have_content(foods.first.code)
    expect(page).to have_content(foods.first.description)
    expect(page).to have_content(foods.first.brand)
    expect(page).to have_content(foods.first.ingredients)

  end
end