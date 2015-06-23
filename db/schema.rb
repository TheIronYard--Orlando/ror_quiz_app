# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150609133432) do
=======
ActiveRecord::Schema.define(version: 20150618133951) do

  create_table "car_models", force: :cascade do |t|
    t.string   "name"
    t.integer  "mpg"
    t.integer  "price"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "car_models_factories", id: false, force: :cascade do |t|
    t.integer "car_model_id"
    t.integer "factory_id"
  end

  add_index "car_models_factories", ["car_model_id"], name: "index_car_models_factories_on_car_model_id"
  add_index "car_models_factories", ["factory_id"], name: "index_car_models_factories_on_factory_id"

  create_table "factories", force: :cascade do |t|
    t.string   "city"
    t.string   "state"
    t.boolean  "unionized"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end
>>>>>>> fcc1c5516442c92572f613d4a818144d28b59aff

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.boolean  "domestic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
