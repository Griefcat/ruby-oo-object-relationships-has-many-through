require_relative "./customer.rb"
require_relative "./waiter.rb"
require_relative "./meal.rb"

sam = Customer.new("Sam", 27)
pat = Waiter.new("Pat", 2)
alex = Waiter.new("Alex", 5)

puts sam.new_meal(pat, 50, 10)