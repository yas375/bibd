# -*- coding: undecided -*-
class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "Продукт добавлен"
      redirect_to @product
    else
      render :action => 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:notice] = "Продукт обновлён"
      redirect_to @product
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Продукт удалён"
    redirect_to products_url
  end
end
