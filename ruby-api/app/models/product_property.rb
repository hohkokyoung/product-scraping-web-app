class ProductProperty < ApplicationRecord
    belongs_to :products, :class_name => "Product"
    belongs_to :product_attributes, :class_name => "ProductAttribute"
end
