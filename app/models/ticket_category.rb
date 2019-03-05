class TicketCategory < ApplicationRecord
  belongs_to :campaign
  has_many :tickets

  has_many :orders, through: :tickets

  validates :name, presence: true
  validates :quantity, presence: true
  validates :description, presence: true
end
