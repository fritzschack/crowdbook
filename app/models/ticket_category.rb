class TicketCategory < ApplicationRecord
  belongs_to :event
  has_many :tickets, dependent: :destroy

  has_many :orders, through: :tickets, dependent: :destroy

  validates :name, presence: true
  validates :quantity, presence: true
  validates :description, presence: true
end
