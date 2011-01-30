# -*- coding: utf-8 -*-
class SuppliesController < ApplicationController
  def index
    @supplies = Supply.order('created_at DESC')
  end

  def show
    @supply = Supply.find(params[:id])
  end

  def new
    @supply = Supply.new
  end

  def create
    @supply = Supply.new(params[:supply])
    if @supply.save
      flash[:notice] = "Поставка сохранена"
      redirect_to root_path
    else
      render :action => 'new'
    end
  end
end
