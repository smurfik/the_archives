Bookcase.create(name: Faker::Name.first_name, description: "Purple with short yellow legs")
Bookcase.create(name: Faker::Name.first_name, description: "White and black with glass doors")

until Book.count >= 15
  Book.create(name: Faker::Book.title, author: Faker::Book.author, bookcase_id: (rand(2) + 1), row: (rand(4) + 1), position: (rand(10) + 1), section: (rand(5) + 1), orientation: ["horizontal", "vertical"].sample)
end
