class AddCafeImageToShops < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :cafe_image_id, :string
  end
end
