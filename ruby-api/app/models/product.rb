class Product < ApplicationRecord
    has_many :product_images
    has_many :product_categories

    validates :url, presence: true
    validates :title, presencce: true,
    validates :description, presencce: true,
    validates :price, presencce: true,
end
