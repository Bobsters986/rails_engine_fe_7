class MerchantsController < ApplicationController
  def index
    @facade = MerchantFacade.new
  end
end