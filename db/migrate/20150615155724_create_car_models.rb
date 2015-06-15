class CreateCarModels < ActiveRecord::Migration
  def change
    create_table :car_models do |t|
      t.string :name
      t.integer :mpg
      t.integer :price

      t.timestamps null: false
    end
  end
end
