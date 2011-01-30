# -*- coding: utf-8 -*-
class LineItem < ActiveRecord::Base
  attr_accessible :object_id, :object_type, :product_id, :quantity

  belongs_to :product
  belongs_to :object, :polymorphic => true

  validates_presence_of :product_id
  validates_numericality_of :quantity, :greater_than => 0

  validates_each :quantity do |record, attr, value|
    if record.object_type == 'Order'
      record.errors.add attr, "не должно превышать общее количество продукта на складе (#{record.product.quantity})" if value > record.product.quantity
    end
  end

  after_create :update_product_quantity

  def update_product_quantity
    case object.class.name
    when 'Supply'
      product.update_attribute(:quantity, product.quantity + quantity)
    when 'Order'
      product.update_attribute(:quantity, product.quantity - quantity)
    end
  end
end
