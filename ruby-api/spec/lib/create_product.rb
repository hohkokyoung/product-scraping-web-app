class CreateProduct
    def self.create(input)
        product = Product.new(url: input[:url], title: input[:title], description: input[:description], price: input[:price])
        product.product_seller = input[:product_seller_obj]
        return product
    end
end
