# -*- coding: utf-8 -*-
module LineItemsHelper
  def products_list(line_items = [])
    lis = ''
    line_items.each do |line_item|
      lis << content_tag(:li, "#{line_item.product.name} - #{line_item.quantity}шт")
    end
    if lis.blank?
      ''
    else
      content_tag :ul, lis.html_safe
    end
  end
end
