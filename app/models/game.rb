class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :platform
  has_many :ratings

  validates :name, presence: true
end
