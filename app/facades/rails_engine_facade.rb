class RailsEngineFacade

  def all_merchants
    service = RailsEngineService.new
    merchants = service.all_merchants

    merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end