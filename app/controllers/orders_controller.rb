class OrdersController < ApplicationController
  before_action :set_user

  def create
    @product = Product.find(params[:product_id])  
    @order = Order.new(user_id: @user.id, product_id: @product.id)

    if @order.save
      redirect_to root_path, notice: 'Order was successfully created.'
    else
      redirect_to root_path, alert: 'There was an error creating the order.'
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])  
  end
end
