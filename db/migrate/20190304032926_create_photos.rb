class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :image_url
      t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end
