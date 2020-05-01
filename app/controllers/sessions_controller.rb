class SessionsController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && (user.authenticate(params[:password]) && user.role == "Customer")
      session[:current_user_id] = user.id
      redirect_to usermain_index_path
    else
      flash[:error] = "Invalid User Credentials.Please Login Again/You are not a Customer"
      redirect_to new_sessions_path
    end
  end

  def destroy
    Menuitem.delete_all
    Billitem.delete_all
    Orderitem.delete_all
    session[:current_user_id] = nil
    @current_user = nil
    redirect_to "/"
  end
end
