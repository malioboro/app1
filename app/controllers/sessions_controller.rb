class SessionsController < ApplicationController
  def edit
    user = User.find_by_activation_token(params[:id])
    if user.update_attributes(activation_token: "", activation_status: "active")
      flash[:notice] = "Your account has active"
      redirect_to root_url
    else
      flash[:notice] = "Welcome to Rails 4"
      redirect_to root_url
    end
  end
end
