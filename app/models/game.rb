class Game < ApplicationRecord
    has_many :records
    validates :title, presence: true
end
