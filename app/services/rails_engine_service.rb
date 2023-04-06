class RailsEngineService

  def all_merchants
    response = conn.get("merchants")
    parsed = JSON.parse(response.body, symbolize_names: true)
    parsed[:data]
  end

  def merchant_items(merchant_id)
    response = conn.get("merchants/#{merchant_id}/items")
    parsed = JSON.parse(response.body, symbolize_names: true)
    parsed[:data]
  end

  def all_items
    response = conn.get("items")
    parsed = JSON.parse(response.body, symbolize_names: true)
    parsed[:data]
  end

  private

  def conn
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end
end