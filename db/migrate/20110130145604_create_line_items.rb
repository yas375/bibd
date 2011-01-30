class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.integer :object_id
      t.string :object_type
      t.integer :product_id
      t.integer :quantity, :null => false, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :line_items
  end
end
