# -*- coding: utf-8 -*-
class OrdersController < ApplicationController
  def index
    @orders = Order.order('created_at DESC')
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      flash[:notice] = "Запись об отправке товара сохранена"
      redirect_to root_path
    else
      render :action => 'new'
    end
  end
end
