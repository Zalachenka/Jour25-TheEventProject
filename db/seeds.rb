require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all
puts "Database destoyed"

20.times do
	user = User.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Name.first_name+"@yopmail.com", 
		password: Faker::String.random(6..12), description: Faker::Marketing.buzzwords)
end
puts "20 users created"

30.times do
	event = Event.create!(start_date: Faker::Date.forward(2), duration: rand(1..200)*5, title: Faker::Book.title,
		description: Faker::Lorem.paragraph_by_chars(666), price: rand(1..1000), location: Faker::WorldCup.city, user_id: User.all.sample.id)
end
puts "30 events created"

40.times do
	rdv = Attendance.create!(user_id: User.all.sample.id, event_id: Event.all.sample.id)
end
puts "40 attendances created"
puts "Database created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
