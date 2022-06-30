class ProductCategorization < ApplicationRecord
    belongs_to :products, :class_name => "Product"
    belongs_to :product_categories, :class_name => "ProductCategory"
end
