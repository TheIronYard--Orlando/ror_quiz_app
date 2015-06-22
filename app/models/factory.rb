class Factory < ActiveRecord::Base

	belongs_to :manufacturer
	has_and_belongs_to_many :car_models
	validates :name, presence: true

	def unionized_or_non_unionized
  		if unionized?
  			'Unionized'
  		else
  			'Non-Unionized'
  		end
 	end
end
