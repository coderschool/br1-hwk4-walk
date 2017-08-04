# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Running db:seed"

if Section.count == 0
  puts "No sections! Let's create some"
  ["breakfast", "lunch", "snack", "dinner"].each do |name|
    section = Section.create(name: name)
    if section.persisted?
      puts "Saved section with name = #{name}"
    end


    # create some food_items for each section

  end
else
  puts "Looks like you already have some sections!"
end

puts "Generating Dishes"

sections = Section.all

20.times do
  FoodItem.create(
    name: Faker::Food.dish,
    section: sections.sample,
    price: rand(10..200) * 1000 # price is between 10,000 VND and 200,000 VND
  )
end