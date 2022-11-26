puts "🌱 Seeding spices..."

# Seed your database here


    Roommate.create(firstname: 'Eric', lastname: 'Yanez', gender: 'Male',age: rand(18..60))
    Roommate.create(firstname: 'Santi', lastname: 'Tapia', gender: 'Male', age: rand(18..60)) 
    Roommate.create(firstname: 'Gianna', lastname: 'Gannon', gender: 'Female', age: rand(18..60)) 
    Roommate.create(firstname: 'Rose', lastname: 'Cannon', gender: 'Female', age: rand(18..60))  
    Roommate.create(firstname: 'Lenix', lastname: 'Pukes', gender: 'Male', age: rand(18..60))
    Roommate.create(firstname: 'Harley', lastname: 'Riche', gender: 'Female' , age: rand(18..60))
    Roommate.create(firstname: 'Sol', lastname: 'Yanez', gender: "Female", age: rand(18..60))   
    


    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 1
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 2
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 3
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 4
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 5
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 6
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 7
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 2
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 1
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 5
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 7
    )
    Review.create(friendly: rand(1..5), clean: rand(1..5), vibes: rand(1..5), foodthief: Faker::Boolean.boolean, comment: Faker::Verb.base, roommate_id: 4
    )


puts "✅ Done seeding!"
