class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :postal_code, default: "",  null: false
      t.integer :prefectures, null:false
      t.string :city,  default: "", null:false
      t.string :address, null:false,  default: ""
      t.string :building,  default: ""
      t.integer :phone,  default: ""
      t.integer :purchase_id, null:false , foreign_key: true 
      t.timestamps
    end
  end
end


