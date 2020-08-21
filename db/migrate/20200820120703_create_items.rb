class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :image, null:false
      t.string :name, null:false
      t.text : explanation,null:false
      t.integewr : price, null:false
      t.integer : category_name, null:false
      t.integer : condition, null:false
      t.integer : delivery_burden, null:false
      t.integer : shipping_area, null:false
      t.integer : shipping_days, null:false

      t.integer : user_id, null:false , foreign_key:true

    end
  end
end


