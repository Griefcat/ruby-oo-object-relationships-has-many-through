require 'pry'
class Waiter

  attr_accessor :name, :yrs_experience

  @@all = []

  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end 

  def meals
    Meal.all.select do |meal|
        meal.waiter == self
    end 
    end 

    def best_tipper
        best_tipping_customer = self.meals.max do |a_meal, another_meal|
            a_meal.tip <=> another_meal.tip 
            
        end 
        best_tipping_customer.customer
    end 

end