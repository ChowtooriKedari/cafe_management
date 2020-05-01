class OrdersController < ApplicationController
  def index
    render "index"
  end

  def create
    items = Billitem.all
    items.each do |item|
      name = item.item_name
      cost = item.item_cost
      quantity = item.quantity
      ordereditems = Order.create(ordered_user_id: 1,
                                  delivered_at: Time.now,
                                  confirmed: false,
                                  quantity: quantity,
                                  item_name: name,
                                  item_cost: item.item_cost,
                                  order_time: item.ordertime)
    end
    redirect_to orders_path
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
