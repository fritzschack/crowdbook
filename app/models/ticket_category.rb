class TicketCategory < ApplicationRecord
  belongs_to :event
  has_many :tickets

  has_many :orders, through: :tickets
end
