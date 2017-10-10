# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

250.times do |i|
  Post.create!(
    title: Faker::Food.dish,
    description: Faker::MostInterestingManInTheWorld.quote,
    body: Faker::Hacker.say_something_smart,
    view_tag: true,
    model_tag: true,
    controller_tag: true)
end
