class MerchantFacade

  def all_merchants
    service = MerchantService.new
    merchants = service.all_merchants

    merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end