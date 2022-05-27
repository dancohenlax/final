class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :image
      t.string :description
      t.string :price
      t.integer :owner_id

      t.timestamps
    end
  end
end
