class RemoveProductSellerColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :product_sellers, :mobile_number
    remove_column :product_sellers, :joined_at
  end
end
