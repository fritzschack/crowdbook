class AddTicketUsedToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :ticket_used, :boolean, default: false
  end
end
