class Product < ApplicationRecord
    has_many :product_images, :foreign_key => :products_id
    has_many :product_properties, :foreign_key => :products_id
    has_many :product_categorizations, :foreign_key => :products_id
    has_many :product_attributes, through: :product_properties, :foreign_key => :products_id
    has_many :product_categories, through: :product_categorizations, :foreign_key => :products_id
    belongs_to :product_seller, optional: true, :foreign_key => :product_sellers_id

    validates_presence_of :url, :title, :description, :price
end
