class Game < ApplicationRecord
    validates :turns, presence: true
    validates :player1, presence: true
    validates :player2, presence: true
    validates :player3, presence: true
    validates :player4, presence: true
end
