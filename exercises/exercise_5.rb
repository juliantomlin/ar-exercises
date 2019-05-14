require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total = Store.sum(:annual_revenue)

puts "Total annual revenue #{total}$"

puts "Average annual revenue #{total / Store.count}$"

puts "#{Store.where("annual_revenue > ?", 1000000).count} stores makes more than 1M annually"
