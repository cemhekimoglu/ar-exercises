require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
@average_revenue = @total_revenue/Store.count
@profitable_store = Store.where("annual_revenue < 1000000").count

puts "Total revenue: #{@total_revenue}"
puts "Average revenue: #{@average_revenue}"
puts "#{@profitable_store} stores has more than $1M in revenue"
