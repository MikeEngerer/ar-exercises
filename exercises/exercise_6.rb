require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

puts @store1
puts @store2.id
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mike", last_name: "erigewi", hourly_rate: 50)
@store1.employees.create(first_name: "ergev", last_name: "wefqw", hourly_rate: 20)
@store1.employees.create(first_name: "KwefEW", last_name: "Vahrhae", hourly_rate: 30)

@store2.employees.create(first_name: "wejfniwe", last_name: "weoifni", hourly_rate: 10)
@store2.employees.create(first_name: "erign", last_name: "gpk", hourly_rate: 40)
@store2.employees.create(first_name: "a", last_name: "b", hourly_rate: 15)
@store2.employees.create(first_name: "asfaf", last_name: "qwgq", hourly_rate: 50)
