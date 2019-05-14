require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
puts "sells men's clothing"
@mens_stores.each do |store|
  puts "#{store.name} makes #{store.annual_revenue}$ per year"
end

@womens_stores_poor = Store.where(womens_apparel: true, annual_revenue: [0..1000000])
puts "______________"
puts "sells woman's clothing and makes less than 1M a year"
@womens_stores_poor.each do |store|
  puts "#{store.name} makes #{store.annual_revenue}$ per year"
end