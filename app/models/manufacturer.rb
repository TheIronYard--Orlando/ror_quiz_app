class Manufacturer < ActiveRecord::Base
	has_many :car_models
	has_many :factories
	validates :name, presence: true

	def domestic_or_foreign
  		if domestic?
  			'domestic'
  		else
  			'foreign'
  		end
 	end

end
