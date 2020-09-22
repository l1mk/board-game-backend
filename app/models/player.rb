class Player < ApplicationRecord
    has_many :records
    validates :name, presence: true
    validates :name, uniqueness: true
end
