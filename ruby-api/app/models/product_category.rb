class ProductCategory < ApplicationRecord
    has_many :product_categorizations
    has_many :products, through: :product_categories
    belongs_to :parent, :class_name => "ProductCategory", optional: true
    # has_many :children, :class_name => "ProductCategory", :foreign_key => 'parent_id'
end
