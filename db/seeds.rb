# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rand(10..20).times do
  user = User.create(user_name: Faker::Lorem.word, first_name: Faker::Name.name, last_name: Faker::Name.name, email: Faker::Internet.email)
  rand(5..10).times do
    Link.create(title: Faker::Hipster.sentence(4, true, 10), body: "#", user_id: user.id)
  end
end

100.times do
  Vote.create(user_id: rand(1..User.count), link_id: rand(1..Link.count), positive: rand(0..1) , negative: 0)
end
