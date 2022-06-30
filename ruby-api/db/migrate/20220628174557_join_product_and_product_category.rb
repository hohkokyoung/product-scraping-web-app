class JoinProductAndProductCategory < ActiveRecord::Migration[7.0]
  def change
    create_join_table :product_categories, :products do |t|
      t.index :product_category_id
      t.index :product_id
    end
  end
end
