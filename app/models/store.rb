class Store < ActiveRecord::Base
  attr_accessible :name, :address, :description

  has_many :orders, :dependent => :nullify

  validates_presence_of :name
end
