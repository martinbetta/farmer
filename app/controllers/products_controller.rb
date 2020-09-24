class ProductsController < ApplicationController


  def index

    if params[:search].present?
      @products = Product.search_by_category_and_name(params[:search])
    else
      @products = Product.all
    end


    if params[:vendor].present?
      @products = @products.joins(user: :vendor_info).where('company_name = ?', params[:vendor])
    end

    @producers = User.where(role: :vendor)
  end

  def show
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
    @vendor = @product.user.vendor_info
  end

end
