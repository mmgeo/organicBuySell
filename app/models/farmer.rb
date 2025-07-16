class Farmer < ApplicationRecord
  has_many :items
  has_one_attached :photo_id
end
