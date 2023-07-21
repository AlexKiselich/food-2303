class FoodService

  def search(key_word)
    get_url("search?query=#{key_word}&pageSize=10")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end


  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1" ) do |faraday|
      faraday.params["api_key"] = ENV["FOODS_API_KEY"]
    end
  end

end