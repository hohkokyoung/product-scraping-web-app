class ProductCategory < ApplicationRecord
    has_many :products
    belongs_to :parent, :class_name => "ProductCategory"
    has_many :children, :class_name => "ProductCategory", :foreign_key => 'parent_id'
end
