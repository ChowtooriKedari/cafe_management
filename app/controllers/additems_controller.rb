class AdditemsController < ApplicationController
  def index
    render "index"
  end

  def show
  end

  def create
    item_name = params[:item_name]
    item_description = params[:item_description]
    item_cost = params[:item_cost]
    new_item = Additems.new(item_name: item_name,
                            item_description: item_description,
                            item_cost: item_cost,
                            user_id: 1)

    if new_item.save
      flash[:notice] = " Item Entry Successful "
      redirect_to additems_path
    else
      flash[:error] = new_item.errors.full_messages.join(" , ")
      redirect_to additems_path
    end
  end

  def edit
    @item = Additems.find(params[:id])
    render "edit"
  end

  def update
    @item = Additems.find(params[:id])
    @item.item_name = params[:additems][:item_name]
    @item.item_description = params[:additems][:item_description]
    @item.item_cost = params[:additems][:item_cost]
    if @item.save
      redirect_to additems_path
    else
      flash[:error] = @item.errors.full_messages.join(" , ")
      render "edit"
    end
  end

  def item_params
    params.fetch(:item, {}).permit(:item_name, :item_description => [])
  end

  def destroy
    id = params[:id]
    item = Additems.find(id)
    item.destroy
    redirect_to additems_path
  end
end
