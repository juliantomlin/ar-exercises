require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jack", last_name: "Smith", hourly_rate: 40)
@store1.employees.create(first_name: "Jull", last_name: "Joe", hourly_rate: 50)
@store1.employees.create(first_name: "Zed", last_name: "Zee", hourly_rate: 70)
@store2.employees.create(first_name: "Kay", last_name: "Lance", hourly_rate: 65)
@store2.employees.create(first_name: "Beckey", last_name: "Lam", hourly_rate: 32)