class CreateProductCategorizations < ActiveRecord::Migration[7.0]
  def change
    create_table :product_categorizations do |t|

      t.timestamps
    end
  end
end
