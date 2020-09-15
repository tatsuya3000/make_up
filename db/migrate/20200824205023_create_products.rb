class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text   :image_url
      t.text   :feature
      t.text   :method
      t.string :type1
      t.string :type2
      t.string :taste1
      t.string :taste2
      t.string :glitter
      t.string :scene1
      t.string :scene2

      t.timestamps
    end
  end
end
