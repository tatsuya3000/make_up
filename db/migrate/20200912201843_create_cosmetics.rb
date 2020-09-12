class CreateCosmetics < ActiveRecord::Migration[5.2]
  def change
    create_table :cosmetics do |t|

      t.timestamps
    end
  end
end
