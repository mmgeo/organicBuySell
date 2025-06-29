class AddLocationToItems < ActiveRecord::Migration[8.0]
  def change
    add_column :items, :location, :string
  end
end
