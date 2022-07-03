class ProductCategorization < ApplicationRecord
    belongs_to :products, :class_name => "Product", :foreign_key => :products_id
    belongs_to :product_categories, :class_name => "ProductCategory"
end
