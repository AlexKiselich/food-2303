class FoodFacade
  def search(key_word)
    results = service.search(key_word)[:foods]
    results.map do |result|
      Food.new(result)
    end
  end

  def total_hits(key_word)
    results = service.search(key_word)
    results[:totalHits]
  end


  def service
    FoodService.new
  end
end