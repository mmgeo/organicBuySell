class AddFarmerToItems < ActiveRecord::Migration[8.0]
  def change
    add_reference :items, :farmer, foreign_key: true
  end
end
