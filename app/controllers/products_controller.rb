class ProductsController < ApplicationController


  def index
    @products = Product.all

    if params[:search].present?
      @products = Product.search_by_category_and_name(params[:search])
    end
  end

  def show
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
    @vendor = @product.user.vendor_info
  end


end
