# require "./lib/create_product"
require "./spec/lib/create_product"
require 'rails_helper'

describe "CreateProduct" do
    describe "add" do
        context "given an empty url" do
            it "returns error" do
                expect(CreateProduct.create({url: nil, title: "Product #1", description: "Description for Product #1", price: "₹100", product_seller_obj: ProductSeller.all.first})).to_not be_valid
            end
        end
    end
end