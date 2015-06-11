class Manufacturer < ActiveRecord::Base

	def domestic_or_foreign
  		if domestic?
  			'domestic'
  		else
  			'foreign'
  		end
 	end
end
