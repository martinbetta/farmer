class PaymentsController < ApplicationController

    def new
        @order = current_user.orders.where(status: 'paying').find(params[:order_id])
    end
    
end
