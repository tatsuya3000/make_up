class RenameNameColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :Name, :name
  end
end
