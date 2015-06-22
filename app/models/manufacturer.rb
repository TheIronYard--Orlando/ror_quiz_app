class Manufacturer < ActiveRecord::Base
	has_many :car_models
	has_many :factories
	validates :name, presence: true


end
