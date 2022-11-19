puts "🌱 Seeding spices..."

# Seed your database here

10.times do
    Roommate.create(
        firstname: Faker::Name.firstname,
        lastname: Faker::Name.lastname,
        gender: Faker::Gender.type.gender
        age: rand(18..60)
    )
end 

puts "✅ Done seeding!"
