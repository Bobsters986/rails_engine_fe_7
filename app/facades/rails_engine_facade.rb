class RailsEngineFacade
  attr_reader :service

  def initialize
    @service = RailsEngineService.new
  end

  def all_merchants
    merchants_info = service.all_merchants

    merchants_info.map do |info|
      Merchant.new(info)
    end
  end

  def merchant_items(merchant_id)
    items_info = service.merchant_items(merchant_id)

    items_info.map do |info|
      Item.new(info)
    end
  end

  def all_items
    items_info = service.all_items

    items_info.map do |info|
      Item.new(info)
    end
  end
end