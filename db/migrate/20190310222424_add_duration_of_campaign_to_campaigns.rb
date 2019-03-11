class AddDurationOfCampaignToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :campaign_end_date, :date
  end
end
