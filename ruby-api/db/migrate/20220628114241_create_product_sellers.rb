class CreateProductSellers < ActiveRecord::Migration[7.0]
  def change
    create_table :product_sellers do |t|
      t.string :name
      t.string :mobile_number
      t.datetime :joined_at

      t.timestamps
    end
  end
end
