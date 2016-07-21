class AddForeignKeyToLinkPurchasesWithUsers < ActiveRecord::Migration
  def change
    add_foreign_key :purchases, :users
  end
end
