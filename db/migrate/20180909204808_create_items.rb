class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :name
      t.text :brand
      t.text :description

      t.timestamps
    end
  end
end
