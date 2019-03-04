class Order < ApplicationRecord
  belongs_to :user
  has_many :tickets

  has_many :ticket_categories, through: :tickets
  belongs_to :event, through: :ticket_categories

end
