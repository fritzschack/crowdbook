class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :campaigns, :password, :codeword
  end
end
