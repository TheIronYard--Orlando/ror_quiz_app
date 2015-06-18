class AddCarModelIdToFactories < ActiveRecord::Migration
  def change
    add_column :factories, :car_model_id, :string
  end
end
