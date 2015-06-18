class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.string :name
      t.string :state
      t.string :city
      t.boolean :unionized

      t.timestamps null: false
    end
  end
end
