class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_type
      t.float :quantity
      t.string :quantity_unit
      t.float :price
      t.string :phone
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
