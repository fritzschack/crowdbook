class AddGenreToCampaign < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :genre, :string
  end
end
