CALORIES = {
  "Cheeseburger" => 300,
  "Hamburger" => 250,
  "Big Mac" => 495,
  "Chicken Nuggets" => 260,
  "French Fries" => 235,
  "Onion Rings" => 100,
  "Coca" => 170,
  "Fanta" => 50
}

MEALS = {
  "Happy Meal" => ["Cheeseburger", "French Fries", "Coca"],
  "Medium Big Mac Meal" => ["Big Mac", "French Fries", "Coca"],
  "Medium Chicken Nuggets Meal" => ["Chicken Nuggets", "Onion Rings", "Fanta"]
}

def calorie_counter(order)
  # TODO: calculate the total amount of calories for the order
  calories = []
  order.each do |item|
    if MEALS.include?(item)
      calories << MEALS[item].map { |meal_item| CALORIES[meal_item] }
    else
      calories << CALORIES[item]
    end
  end
  calories.flatten.reduce(:+)
end

# iterate through the order
# if order item is a meal,
#   iterate through meal values and return the calories (integer)
# if order item is not a meal
#   retrieve calories for food item.
# take sum of all integer numbers to return total calories
