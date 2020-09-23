class ProductsController < ApplicationController


  def index
    @products = Product.all

    if params[:query].present?
      @products = @products.where(category: params[:query])
    end

    if params[:search].present?
      @products = @products.where('name ILIKE ?', "%#{params[:search]}%")
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
