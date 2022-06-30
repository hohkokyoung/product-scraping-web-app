class RemoveProductCategoryJoinTable < ActiveRecord::Migration[7.0]
  def change
    drop_join_table :products, :product_categories
  end
end
