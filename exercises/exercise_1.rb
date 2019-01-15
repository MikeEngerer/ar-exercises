require_relative '../setup'

puts "Exercise 1"
puts "----------"

store1 = Store.new do |store|
	store.name = "Burnaby"
	store.annual_revenue = 300000
	store.mens_apparel = true
	store.womens_apparel = true
end

store2 = Store.new do |s|
	s.name = "Richmond"
	s.annual_revenue = 1260000
	s.mens_apparel = false
	s.womens_apparel = true
end

store3 = Store.new do |s|
	s.name = "Gastown"
	s.annual_revenue = 190000
	s.mens_apparel = true
	s.womens_apparel = false
end
store1.save
store2.save
store3.save

pp "store count:", Store.count
# Your code goes below here ...
