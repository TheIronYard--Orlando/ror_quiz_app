class Factory < ActiveRecord::Base
  belongs_to :manufacturer
  has_and_belongs_to_many :car_models

  validates :city, presence: true
  validates :state, presence: true

end
