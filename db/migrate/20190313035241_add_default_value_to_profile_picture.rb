class AddDefaultValueToProfilePicture < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :profile_picture, :string, :default => "aaglzq7eeutfaut0wef0.jpg"
  end
end
