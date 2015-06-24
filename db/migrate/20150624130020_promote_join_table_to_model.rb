class PromoteJoinTableToModel < ActiveRecord::Migration
  def change
    rename_table :car_models_factories, :production_lines do |t|
      t.integer :annual_quota
    end
  end
end
