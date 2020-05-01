class DeleteController < ApplicationController
  def index
    Billitem.delete_all
    redirect_to billitems_path
  end

  def delete
    redirect_to billitems_path
  end
end
