class ReportsController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def index
    render "index"
  end

  def edit
    id = params[:id]
    @user = User.find(id)
    render "singlepersonreport"
  end

  def create
    @from_date = params[:from_date]
    @to_date = params[:to_date]
    render plain: "datecheck"
  end

  def new
  end
end
