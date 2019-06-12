require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
    belongs_to :store
    validates :first_name, presence:true
    validates :last_name, presence:true
    # validates :store_id
    validates :hourly_rate, :inclusion => {:in => [40,200], :only_integer => true}
    validates :annual_revenue, :inclusion => {in: [0], :only_integer => true}
    
end

@store2.employees.create(first_name:"Peter" , last_name: "Syn", hourly_rate:45 )
