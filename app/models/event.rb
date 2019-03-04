class Event < ApplicationRecord
  belongs_to :user
  has_many :performances, dependant: :destroy
  has_many :photos, dependant: :destroy
  has_many :ticket_categories, dependant: :destroy

  has_many :musicians, through: :performances
  has_many :genres, through: :musicians
  has_many :tickets, through: :ticket_categories, dependant: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :date, presence: true
end
