class ProductionLine < ActiveRecord::Base
  belongs_to :car_model
  belongs_to :factory
end
