class Ticket < ApplicationRecord
  belongs_to :order
  belongs_to :ticket_category

  delegate :campaign, to: :ticket_category, allow_nil: true
end
