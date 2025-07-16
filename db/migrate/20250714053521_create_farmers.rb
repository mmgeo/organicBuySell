class CreateFarmers < ActiveRecord::Migration[8.0]
  def change
    create_table :farmers do |t|
      t.string :name
      t.string :photo_id
      t.string :farm_location
      t.boolean :is_organic

      t.timestamps
    end
  end
end
