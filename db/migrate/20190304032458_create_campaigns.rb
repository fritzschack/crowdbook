class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :address
      t.text :description
      t.date :date
      t.string :url
      t.boolean :is_private, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
