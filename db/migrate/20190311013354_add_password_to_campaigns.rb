class AddPasswordToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :password, :string
  end
end
