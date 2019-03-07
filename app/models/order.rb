class Order < ApplicationRecord
  belongs_to :user
  has_many :tickets, dependent: :destroy
  has_many :ticket_categories, through: :tickets

  monetize :amount_cents
end
