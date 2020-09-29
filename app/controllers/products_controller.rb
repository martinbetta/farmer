class ProductsController < ApplicationController

  def index
    @products = Product.all

    if params[:location].present?
      near_vendors = User.near(params[:location], 30).where(role: :vendor)
      @products = @products.where(user: near_vendors.map(&:id))
    end

    if params[:search].present?
      @products =  @products.search_by_category_and_name(params[:search])
    end

    if params[:vendor].present?
      @products = @products.joins(user: :vendor_info).where('company_name = ?', params[:vendor])
    end

    @producers = near_vendors || User.where(role: :vendor)
  end

  def show
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
    @review = Review.new
    @vendor = @product.user.vendor_info

    @vendor_user = @product.user
    @markers = [
      {
        lat: @vendor_user.latitude,
        lng: @vendor_user.longitude
      }
    ]
  end
  
end
