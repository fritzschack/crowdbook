class AddColumnToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :funding_goal, :integer
    add_column :campaigns, :current_funding_amount, :integer, default: 0
  end
end
