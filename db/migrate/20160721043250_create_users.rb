class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 50
      t.string :email, null: false, limit: 50
      t.string :address, null: false, limit: 50
      t.string :password, null: false, limit: 20
      t.integer :cc_number, null: false

      t.timestamps

    end
  end
end
