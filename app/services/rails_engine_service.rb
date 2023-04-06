class RailsEngineService

  def conn
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def all_merchants
    get_url("merchants")
  end
end