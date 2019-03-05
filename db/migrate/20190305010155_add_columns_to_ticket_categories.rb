class AddColumnsToTicketCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :ticket_categories, :available_tickets, :integer
  end
end
