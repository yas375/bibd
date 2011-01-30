class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :sku, :null => false
      t.string :name
      t.text :description
      t.integer :quantity, :null => false, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
