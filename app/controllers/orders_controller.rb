class OrdersController < ApplicationController

  def index
    return redirect_to root_path if current_user.id == select_item.user_id || select_item.order!=nil

  end

  def create
  end

end
