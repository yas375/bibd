class Order < ActiveRecord::Base
  attr_accessible :store_id

  belongs_to :store
  has_many :line_items, :as => :object, :dependent => :destroy
  has_many :products, :through => :line_items

  validates_presence_of :store_id
end
