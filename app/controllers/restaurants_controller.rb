class RestaurantsController < ApplicationController
  RESTAURANTS = {
      1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
      2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
    }

  def index
    # fetch all restaurants
    # @restaurants = Restaurant.all
    if params[:food_type].present?
      @restaurants = RESTAURANTS.select { |id, restaurant| restaurant[:category] == params[:food_type]}
    else
      @restaurants = RESTAURANTS
    end
  end

  def create
    raise
    Restaurant.new(name: params[:name], address: params[:address])
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
