class AddForeignKeyToLinkProductsWithBrands < ActiveRecord::Migration
  def change
    add_foreign_key :products, :brands
  end
end
