class MenuitemsController < ApplicationController
  def index
    render "index"
  end

  def create
    @count = 0
    @count1 = 0
    items = Additems.all
    items.each do |item|
      item_name = item.item_name
      item_description = item.item_description
      item_cost = item.item_cost
      menu_item = Menuitem.new(item_name: item_name,
                               item_description: item_description,
                               item_cost: item_cost,
                               user_id: 1,
                               selected: false)

      item.save
      if menu_item.save
        @count = @count + 1
      end
    end
    redirect_to menuitems_path
  end

  def update
    id = params[:id]
    selected = params[:selected]
    item = Menuitem.find(id)
    if !item.selected
      item.selected = true
    else
      item.selected = false
    end
    item.save!
    redirect_to menuitems_path
  end

  def destroy
    id = params[:id]
    item = Menuitem.find(id)
    item.destroy
    redirect_to orderitems_path
  end
end
