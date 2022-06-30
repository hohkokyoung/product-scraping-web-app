class ProductImage < ApplicationRecord
    belongs_to :product, foreign_key: :products_id
end
