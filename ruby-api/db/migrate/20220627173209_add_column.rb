class AddColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :product_attributes, :name, :string
    add_column :product_attributes, :value, :text
  end
end
