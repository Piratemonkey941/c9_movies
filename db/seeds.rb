# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


20.times do |i|
    Movie.create!(title: Faker::Movie.quote, director: Faker::Name.name, release_year: Faker::Number.between(from: 1980, to: 2030))
  end