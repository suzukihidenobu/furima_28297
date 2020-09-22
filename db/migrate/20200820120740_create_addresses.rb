class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :postal_code,  null: false
      t.integer :shipping_area_id, null:false
      t.string :city,  default: "", null:false
      t.string :address_number, null:false,  default: ""
      t.string :building,  default: ""
      t.integer :phone,  default: ""
      t.integer :purchases_id, null:false , foreign_key: true 
      t.timestamps
    end
  end
end


