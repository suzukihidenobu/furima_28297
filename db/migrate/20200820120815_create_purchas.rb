class CreatePurchas < ActiveRecord::Migration[6.0]
  def change
    create_table :purchas do |t|
      t.integer : user_id,null:false , foreign_key: true
      t.integer : item_id,null:false , foreign_key: true
      ##timestamps
    end
  end
end


