class Report < ActiveRecord::Base
  validates :menu_item_cost, presence: true
end
