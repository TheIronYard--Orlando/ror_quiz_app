class AddColumnManufIDtoFactories < ActiveRecord::Migration
  
  def change
  	add_column :factories, :manufacturer_id, :integer
  end
end












