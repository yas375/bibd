class WelcomeController < ApplicationController
  def index
    @products_in_stock = Product.where("quantity > 0").order(:name)

    last_orders = Order.order('created_at DESC').limit(10)
    last_supplies = Supply.order('created_at DESC').limit(10)

    @last_operations = (last_orders + last_supplies).sort {|a, b| b.created_at <=> a.created_at}.shift(10)
  end
end
