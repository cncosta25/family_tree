# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

usernames = ["cristina", "raghu"]

usernames.each do |username|
  user = User.new
  user.email = "#{username}@example.com"
  user.password = "12341234"
  user.save

  2.times do
    family = Family.new
    family.user_id = user.id
    family.name = Faker::Name.last_name
    family.save

    2.times do
      member = Member.new
      member.name = Faker::Name.first_name
      member.surname = family.name
      member.notes = Faker::Lorem.paragraph
      member.image = Faker::Avatar.image
      member.family_id = family.id
      member.save
    end

  end
end

puts "There are now #{User.count} users in the database."
