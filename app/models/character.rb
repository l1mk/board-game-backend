class Character < ApplicationRecord
    validates :pokemon, presence: true
    validates :attack, presence: true
    validates :defense, presence: true
    validates :speed, presence: true
    validates :luck, presence: true
end
