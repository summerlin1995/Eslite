class CreateProductPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :product_photos do |t|
      t.integer :id_product

      t.timestamps
    end
  end
end
