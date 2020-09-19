class ProductsController < ApplicationController


  def index
    if params[:query].present?
      @products = Product.where(category: params[:query])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
  end


end
