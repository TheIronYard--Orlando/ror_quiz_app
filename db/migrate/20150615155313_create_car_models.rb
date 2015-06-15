class CreateCarModels < ActiveRecord::Migration
  def change
    create_table :car_models do |t|
      t.string :name
      t.float :mpg
      t.float :price
      t.integer :manufacturer_id

      t.timestamps null: false
    end
  end
end
