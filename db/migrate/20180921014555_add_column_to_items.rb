class AddColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :likes, :integer, default: 0
  end
end
