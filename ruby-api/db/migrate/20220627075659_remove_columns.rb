class RemoveColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :size
  end
end
