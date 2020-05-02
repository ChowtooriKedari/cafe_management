class HomeController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def index
    if current_user
      redirect_to usermain_index_path
    else
      render "index"
    end
  end
end
