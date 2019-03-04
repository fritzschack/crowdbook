class TicketCategory < ApplicationRecord
  belongs_to :event
  has_many :tickets, dependant: :destroy

  has_many :orders, through: :tickets, dependant: :destroy
end
