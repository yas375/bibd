class Product < ActiveRecord::Base
  attr_accessible :sku, :name, :description

  has_many :line_items, :dependent => :destroy

  validates_presence_of :sku, :name
  validates_uniqueness_of :sku
  validates_numericality_of :quantity, :greater_than_or_equal_to => 0
end
