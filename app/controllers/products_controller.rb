class ProductsController < ApplicationController


  def index
    if params[:query].present?
      @products = Product.where(category: params[:query])
    else
      @products = Product.all
    end
  end



end
