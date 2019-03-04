class Ticket < ApplicationRecord
  belongs_to :order
  belongs_to :ticket_category
end
