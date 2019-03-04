class Genre < ApplicationRecord
  has_many :musicians

  validates :name, presence: true
end
