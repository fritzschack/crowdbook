class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.references :event, foreign_key: true
      t.references :musician, foreign_key: true

      t.timestamps
    end
  end
end
