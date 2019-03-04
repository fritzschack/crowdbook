class CreateTicketCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_categories do |t|
      t.string :name
      t.integer :quantity
      t.text :description
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
