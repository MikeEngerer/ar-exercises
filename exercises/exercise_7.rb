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
@store_name = gets.chomp

def new_store(input)
	Store.create(name: input)
end

@new_store = new_store(@store_name)

@new_store.errors.messages.each do |key, error|
	puts "#{key}: #{error[0]}"
end