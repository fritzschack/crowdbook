class CreateMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :musicians do |t|
      t.string :name
      t.text :description
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
