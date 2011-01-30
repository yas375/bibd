class CreateSupplies < ActiveRecord::Migration
  def self.up
    create_table :supplies do |t|
      t.integer :supplier_id
      t.text :description
      t.timestamps
    end
  end
  
  def self.down
    drop_table :supplies
  end
end
