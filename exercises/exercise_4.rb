require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(:name => "Surrey", :annual_revenue => 224000, :mens_apparel =>false, :womens_apparel => true )
Store.create(:name => "Whistler", :annual_revenue => 1900000, :mens_apparel =>true, :womens_apparel => false )
Store.create(:name => "Yaletown", :annual_revenue => 430000, :mens_apparel =>true, :womens_apparel => true )

@men_stores = Store.where(mens_apparel:true)
puts @men_stores.count
@men_stores.each {|n| p n.name, n.annual_revenue }

@woman_stores = Store.where(womens_apparel:true)
@woman_stores.each {|store|p store.annual_revenue < 1000000, store.name}