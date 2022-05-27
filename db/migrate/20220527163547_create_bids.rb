class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.integer :product_id
      t.integer :sender_id
      t.integer :reciever_id
      t.string :status

      t.timestamps
    end
  end
end
