class MerchantsController < ApplicationController
  def index
    @facade = RailsEngineFacade.new
  end
end