class AddProductRelationship < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :product_sellers
    add_reference :product_properties, :products
    add_reference :product_properties, :product_attributes
    add_reference :product_images, :products
  end
end
