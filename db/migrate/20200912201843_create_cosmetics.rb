class CreateCosmetics < ActiveRecord::Migration[5.2]
  def change
    create_table :cosmetics do |t|
      t.integer :user_id
      t.string  :name
      t.text    :image
      t.string  :category
      t.text    :review
      
      t.timestamps
    end
  end
end
