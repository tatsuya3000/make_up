class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Name, :string, null: false, default: ""
  end
end