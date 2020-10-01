class PaymentsController < ApplicationController
  before_action :set_order_to_paying

  def new
  end

  private

  def set_order_to_paying
    @current_order.update(status: 'paying')
  end
end
