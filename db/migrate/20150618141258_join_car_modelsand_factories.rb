class JoinCarModelsandFactories < ActiveRecord::Migration
  def change
    create_table :car_models_factories, id: false do |t|
      t.integer :car_model_id
      t.integer :factory_id
    end
    remove_column :factories, :car_model_id
  end
end
