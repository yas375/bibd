class Supplier < ActiveRecord::Base
  attr_accessible :name, :phone, :description

  has_many :supplies, :dependent => :nullify

  validates_presence_of :name
end
