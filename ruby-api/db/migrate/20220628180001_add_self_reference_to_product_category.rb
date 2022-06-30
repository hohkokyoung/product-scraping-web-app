class AddSelfReferenceToProductCategory < ActiveRecord::Migration[7.0]
  def change
    add_reference :product_categories, :product_categories
  end
end
