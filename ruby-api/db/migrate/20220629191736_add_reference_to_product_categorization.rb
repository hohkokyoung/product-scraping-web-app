class AddReferenceToProductCategorization < ActiveRecord::Migration[7.0]
  def change
    add_reference :product_categorizations, :products
    add_reference :product_categorizations, :product_categories
  end
end
