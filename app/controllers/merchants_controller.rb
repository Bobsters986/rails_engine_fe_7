class MerchantsController < ApplicationController
  def index
    @merchants = all_merchants
  end

  def show
    @merchant = all_merchants.find do |merchant| 
      merchant.id == params[:id]
    end

    @items = facade.merchant_items(params[:id])
  end

  private

  def all_merchants
    @merchants ||= facade.all_merchants
  end

  def facade
    @facade ||= RailsEngineFacade.new
  end
end