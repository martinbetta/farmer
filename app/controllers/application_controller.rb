class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_order_details

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :role, vendor_info_attributes: [:description, :company_name, :image_url]])
  end

  def set_current_order_details
    @current_order = current_user ? Order.find_by(user: current_user, status: "new") : nil

    if @current_order
      @subtotal = @current_order.subtotal
    end
  end

  def default_url_options
  { host: ENV["http://www.organigo.shop/"] || "localhost:3000" }
end
end
