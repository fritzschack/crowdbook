class TicketCategory < ApplicationRecord
  belongs_to :event
  has_many :tickets, dependant: :destroy

  has_many :orders, through: :tickets, dependant: :destroy

  validates :name, presence: true
  validates :quantity, presence: true
  validates :description, presence: true
end
