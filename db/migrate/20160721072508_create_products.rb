class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :brand_id, null: false
      t.integer :category_id, null: false
      t.decimal :price, precision: 6, scale: 2
      t.string :image_src
    end
  end
end
