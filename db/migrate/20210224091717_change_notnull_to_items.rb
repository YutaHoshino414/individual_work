class ChangeNotnullToItems < ActiveRecord::Migration[5.2]
  def change
    change_column_null :items, :name, false
    change_column_null :items, :brand, false
    change_column_null :items, :price, false
    change_column_null :items, :category_id, false
  end
end
