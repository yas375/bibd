# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Product.create!(:name => 'Фен LG2700', :sku => 'PSC-2305', :description => 'Фен для волос')
Product.create!(:name => 'Электробритва BOSH-3000', :sku => 'B3000', :description => 'Бритва для мужчин. Зарядное в комплекте')
Product.create!(:name => 'АОН Русь', :sku => 'rus-12', :description => 'Телефонный аппарат')
Product.create!(:name => 'Старальная машина для дома Bosh 3000w', :sku => 'bosh3000w', :description => 'Стиаральная машина 3000w')
Product.create!(:name => 'Пылесос Rowenta 2500', :sku => 'row-2500', :description => 'Пылесос для ковров')
Product.create!(:name => 'Часы луч', :sku => 'l2500', :description => 'Кварцевые наручные часы')
Product.create!(:name => 'Кирпич красный', :sku => 'kir-2003', :description => 'Пустотелый')
Product.create!(:name => 'Гозасиликатный блок', :sku => 'bl-18', :description => '50х25х25')

Store.create!(:name => 'Магазин №2', :address => 'г. Минск, Бровки 2', :description => 'специализированный на бытовой химии')
Store.create!(:name => 'Маназин №5', :address => 'г. Минск, Ольшевского 22', :description => 'директор - Иванов Л.И.')
Store.create!(:name => 'Магазин №22', :address => 'г. Барановичи, Солнечная, 4')
Store.create!(:name => 'Строймаг', :address => 'г. Гродно, Революционная 5')
Store.create!(:name => 'Всё для дома', :address => 'г. Витебск, ул. Ленина 25', :description => '')
Store.create!(:name => 'Техника для кухни', :address => 'г. Витебск, пл. Мира 11', :description => 'только опт')

Supplier.create!(:name => 'ИП Кулешов', :phone => '+375(29) 123-2312', :description => 'работает только по будням')
Supplier.create!(:name => 'ОАО Стройматериалы', :phone => '+375(26) 323-2312')
Supplier.create!(:name => 'ООО Бытовые товары', :phone => '234 1212')
