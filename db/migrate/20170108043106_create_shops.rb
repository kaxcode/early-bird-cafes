class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :website
      t.text :hours
      t.string :phone_number
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
