class Supply < ActiveRecord::Base
  attr_accessible :supplier_id, :description

  belongs_to :supplier
  has_many :line_items, :as => :object, :dependent => :destroy
  has_many :products, :through => :line_items

  validates_presence_of :supplier_id
end
