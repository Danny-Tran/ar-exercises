require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
p @store_sum = Store.sum(:annual_revenue)
p @average = @store_sum/5

p @store1M = Store.where("annual_revenue > ?", 1000000).count
