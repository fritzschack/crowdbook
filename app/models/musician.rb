class Musician < ApplicationRecord
  belongs_to :genre
  has_many :performances
end
