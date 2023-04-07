class ItemsController < ApplicationController

  def index
    @items = all_items
  end

  def show
    @item = all_items.find do |item| 
      item.id == params[:id]
    end
  end

  private

  def all_items
    @items ||= facade.all_items
  end

  def facade
    @facade ||= RailsEngineFacade.new
  end
end