# restaurant_controller.rb
class RestaurantsController < ApplicationController
  def top
    @restaurants = Restaurant.where(stars: 5)
  end
  before_action :find_restaurant, only: [ :chef ]

  def chef
    @chef_name = @restaurant.chef_name
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
