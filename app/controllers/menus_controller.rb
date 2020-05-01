class MenusController < ApplicationController
  def index
    render "index"
  end

  def create
    name = params[:name]
    new_menu = Menu.new(user_id: current_user.id,
                        name: name)
    if new_menu.save
      redirect_to menus_path
    else
      flash[:error] = new_todo.errors.full_messages.join(" , ")
      redirect_to menus_path
    end
  end
end
