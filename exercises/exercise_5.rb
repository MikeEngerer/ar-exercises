require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@all_stores_revenue = Store.all

@total_revenue = 0

@all_stores_revenue.each do |s|
	@total_revenue += s.annual_revenue
end

puts "Total revenue", @total_revenue, "Average store revenue", @total_revenue / @all_stores_revenue.count

@stores_over_one = @all_stores_revenue.select { |s| s.annual_revenue > 1000000}.count

puts "Stores with > 1000000 revenue", @stores_over_one