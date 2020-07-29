# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Deleting all users"
User.destroy_all
Castingcall.destroy_all

p "Creting users"
6.times do |index|
  user = User.create!(
    name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: Faker::Internet.password,
  )

  castingcall = Castingcall.create!(
    title: Faker::Movie.title,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    user_id: user.id,
    # main_image: Faker::LoremPixel.image(size: "300x300"),
  )
  castingcall.save
end
p "Created #{User.count} users"
p "Created #{Castingcall.count} Castingcalls"
