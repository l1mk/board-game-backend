class Player < ApplicationRecord
    has_many :records
    validates :name, presence: true
    validates :favorite, inclusion: { in: (Pikachu Jigglypuff Evee Togepi)}
end
