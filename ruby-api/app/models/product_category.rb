class ProductCategory < ApplicationRecord
    has_many :product_categorizations
    has_many :products, through: :product_categories
    belongs_to :product_category, :class_name => 'ProductCategory', optional: true, :foreign_key => :product_categories_id
    # has_many :children, :class_name => 'ProductCategory', :foreign_key => 'parent_id'
    # has_many :children, :class_name => "ProductCategory", :foreign_key => 'parent_id'
end
