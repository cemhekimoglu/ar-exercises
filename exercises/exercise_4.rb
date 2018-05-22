require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "Surrey", annual_revenue: "224000", mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: "1900000", mens_apparel: true, womens_apparel: false)
store = Store.create(name: "Yaletown", annual_revenue: "430000", mens_apparel: true, womens_apparel: true)


def print_stores(stores)
  stores.each do |store|
    puts "#{store.name}: $#{store.annual_revenue}"
  end
end

@mens_stores = Store.where(mens_apparel: true).each
@womens_stores = Store.where("annual_revenue < 1000000").each


puts "--- Stores carrying men's apparel ---"
print_stores @mens_stores
puts "--- Stores carrying women's apparel, revenue < $1M ---"
print_stores @womens_stores
