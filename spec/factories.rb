FactoryGirl.define do
  factory :topic do
    name { Faker::Lorem.sentence(3) }
  end

  factory :issue do
    title { Faker::Lorem.sentence(3) }
    effort { rand(10) }
    expires_at { DateTime.current.beginning_of_hour + rand(20).hours }
    description { Faker::Lorem.paragraph(5) }
    expectation { Faker::Lorem.paragraph(5) }
    image_url { Faker::Avatar.image }

    trait :critical do
      urgent true
    end
  end
end
