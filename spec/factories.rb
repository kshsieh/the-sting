FactoryGirl.define do
  factory :topic do
    name { Faker::Lorem.sentence(3) }
  end
end
