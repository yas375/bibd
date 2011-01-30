class LineItem < ActiveRecord::Base
  attr_accessible :object_id, :object_type, :product_id, :quantity

  belongs_to :product
  belongs_to :object, :polymorphic => true

  validates_presence_of :product_id, :object_id
  validates_numericality_of :quantity, :greater_than_or_equal_to => 0

end
