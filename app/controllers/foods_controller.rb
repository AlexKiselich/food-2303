class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.new.search(params[:q])
    @foods_total_hits = FoodFacade.new.total_hits(params[:q])
  end
end