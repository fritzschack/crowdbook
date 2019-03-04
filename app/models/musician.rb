class Musician < ApplicationRecord
  belongs_to :genre
  has_many :performances

  validates :name, presence: true
  validates :genre, presence: true
end
