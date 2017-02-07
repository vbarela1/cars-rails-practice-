20.times do
  Car.create(
    make: ['Jeep', 'Toyota', 'Ford'].sample, 
    model: Faker::Vehicle.manufacture,
    color: Faker::Color.color_name,
    year: Faker::Number.between(1990,2017).to_s,
    runs: Faker::Boolean.boolean
    )
end 

puts "Cars seeded, There are now #{Car.count} cars in the database"
