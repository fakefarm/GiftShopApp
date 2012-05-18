class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.integer :price
      t.integer :brand_id

      t.timestamps
    end
  end
end
