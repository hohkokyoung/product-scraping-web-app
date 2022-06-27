class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.text :url
      t.string :title
      t.text :description
      t.decimal :price
      t.string :mobile_number
      t.integer :size

      t.timestamps
    end
  end
end
