class Order < ActiveRecord::Base
  attr_accessible :store_id, :line_items_attributes

  belongs_to :store
  has_many :line_items, :as => :object, :dependent => :destroy
  accepts_nested_attributes_for :line_items, :reject_if => proc {|attrs| attrs['product_id'].blank?}
  has_many :products, :through => :line_items

  validates_presence_of :store
end
