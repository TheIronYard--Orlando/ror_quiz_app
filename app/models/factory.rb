class Factory < ActiveRecord::Base

	belongs_to :manufacturer
	validates :name, presence: true

	def unionized_or_non_unionized
  		if unionized?
  			'Unionized'
  		else
  			'Non-Unionized'
  		end
 	end
end
