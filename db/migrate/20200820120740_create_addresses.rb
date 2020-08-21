class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :postal_code, null:false
      t.integer :prefectures, null:false
      t.string :city, null:false
      t.string :address, null:false
      t.string :building
      t.integer :phone
      t.integer :purchase_id, null:false , foreign_key: true 
      t.timestamps
    end
  end
end


