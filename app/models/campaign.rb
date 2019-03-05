class Campaign < ApplicationRecord
  belongs_to :user
  has_many :performances, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :ticket_categories, dependent: :destroy

  has_many :musicians, through: :performances
  has_many :genres, through: :musicians
  has_many :tickets, through: :ticket_categories, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :date, presence: true

  accepts_nested_attributes_for :performances
  accepts_nested_attributes_for :ticket_categories
end
