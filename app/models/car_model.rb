class CarModel < ActiveRecord::Base
    belongs_to :manufacturer
    has_many :production_lines
    has_many :factories through: :production_lines
    has_and_belongs_to_many :factories
    validates :name, presence: true, uniqueness: true

end
