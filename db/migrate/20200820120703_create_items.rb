class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|    
      t.string :name, null:false
      t.string :item_info, null:false
      t.integer :price, null:false
      t.integer :category_name, null:false
      t.integer :condition, null:false
      t.integer :delivery_burden, null:false
      t.integer :shipping_area, null:false
      t.integer :shipping_days, null:false
      t.integer :user_id, null:false , foreign_key:true
       
      t.timestamps
    end
  end
end


# マイグレーションファイルにはデフォルトでtimestampsが記載されていますが、こちらは型の名称ではなく、Railsが独自に用意している特別なものです。