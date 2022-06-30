class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :mobile_number
  end
end
