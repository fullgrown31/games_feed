class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :platform
  has_many :ratings

  validates :metascore, numericality: {only_integer: true}
  validates :name, presence: true
end
