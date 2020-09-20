class Record < ApplicationRecord
    belongs_to :player
    belongs_to :game
    validates :score, presence: true
end
