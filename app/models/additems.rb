class Additems < ActiveRecord::Base
  validates :item_name, presence: true
  validates :item_description, length: { minimum: 2 }
  validates :item_cost, presence: true
end
