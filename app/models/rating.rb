class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :game
  validates :userscore, numericality: { only_integer: true }
end
