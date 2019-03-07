class AddPriceToTicketCategory < ActiveRecord::Migration[5.2]
  def change
    add_monetize :ticket_categories, :price, currency: { present: false }
  end
end
