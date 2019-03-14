class TicketCategory < ApplicationRecord
  belongs_to :campaign
  has_many :tickets

  has_many :orders, through: :tickets

  validates :name, presence: true
  validates :description, presence: true
  validates :quantity, presence: true
  validates :price_cents, presence: true

  monetize :price_cents
end
