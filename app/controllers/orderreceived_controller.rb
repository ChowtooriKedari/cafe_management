class OrderreceivedController < ApplicationController
  def index
    render "index"
  end

  def show
    render "index"
  end

  def update
    id = params[:id]
    item = Order.find(id)
    if !item.confirmed
      item.confirmed = true
    else
      item.confirmed = false
    end
    item.save!
    redirect_to orderreceived_path
  end
end
