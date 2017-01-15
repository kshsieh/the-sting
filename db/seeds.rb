# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
["Healthcare", "Foreign & Domestic Policy", "The Environment", "Immigration", "The Economy", "National Security"].each do |name|
  t = Topic.find_or_create_by(name: name)

  rand(10).times do
    i = FactoryGirl.create(:issue, topic: t)
    FactoryGirl.create(:script, issue: i)
  end

  i = FactoryGirl.create(:issue, :critical, topic: t)
  FactoryGirl.create(:script, issue: i)
end