class Manufacturer < ActiveRecord::Base

	def foreign_or_domestic
	  if domestic?
			'domestic'
		else
			'foreign'
		end
	end


end
