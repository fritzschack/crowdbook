class Event < ApplicationRecord
  belongs_to :user
  has_many :performances
  has_many :photos
  has_many :ticket_categories

  has_many :musicians, through: :performances
  has_many :genres, through: :musicians
  has_many :tickets, through: :ticket_categories

  validates :name, presence: true
  validates :address, presence: true
  validates :date, presence: true
end
