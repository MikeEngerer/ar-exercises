require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...


store1 = Store.new do |s|
	s.name = "Surrey"
	s.annual_revenue = 224000
	s.mens_apparel = false
	s.womens_apparel = true
end

store2 = Store.new do |s|
	s.name = "Whistler"
	s.annual_revenue = 1900000
	s.mens_apparel = true
	s.womens_apparel = false
end

store3 = Store.new do |s|
	s.name = "Yaletown"
	s.annual_revenue = 430000
	s.mens_apparel = true
	s.womens_apparel = true
end

store1.save
store2.save
store3.save

@mens_stores = Store.all.select {|s| s.mens_apparel }

@mens_stores.each do |s|
	p s.name, s.annual_revenue
end

@womens_one_million = Store.all.select {|s| s.womens_apparel && s.annual_revenue < 1000000}

@womens_one_million.each do |s|
	p "carries womens?", s.womens_apparel, "revenue", s.annual_revenue
end