class ChangeDateColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :product_attributes, :created_at, :datetime, null: false, default: -> { "CURRENT_TIMESTAMP" }
    change_column :product_categories, :created_at, :datetime, null: false, default: -> { "CURRENT_TIMESTAMP" }
    change_column :product_images, :created_at, :datetime, null: false, default: -> { "CURRENT_TIMESTAMP" }
    change_column :product_properties, :created_at, :datetime, null: false, default: -> { "CURRENT_TIMESTAMP" }
    change_column :product_sellers, :created_at, :datetime, null: false, default: -> { "CURRENT_TIMESTAMP" }
    change_column :products, :created_at, :datetime, null: false, default: -> { "CURRENT_TIMESTAMP" }
  end
end
