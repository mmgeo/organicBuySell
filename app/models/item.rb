class Item < ApplicationRecord
  belongs_to :farmer, optional: true
  validates :item_type, inclusion: { in: ["Vegetable", "Fruit", "Homemade Product"] }
end
