class ChangeProductCategoryColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :product_categories, :product_categories_id, :bigint, null: true
  end
end
