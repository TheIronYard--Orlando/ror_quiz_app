class Manufacturer < ActiveRecord::Base
	has_many :car_models

	def domestic_or_foreign
  		if domestic?
  			'domestic'
  		else
  			'foreign'
  		end
 	end

end
