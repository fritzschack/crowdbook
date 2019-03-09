class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_picture, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :text
    add_column :users, :is_creator, :boolean, default: false
  end
end
