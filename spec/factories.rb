FactoryGirl.define do
  factory :topic do
    name { Faker::Lorem.sentence(3) }
  end

  factory :issue do
    title { Faker::Lorem.sentence(3) }
    effort { rand(1..20) }
    expires_at { DateTime.current.beginning_of_hour + rand(1..10).days + rand(1..12).hours }
    description { Faker::Lorem.paragraph(5) }
    expectation { Faker::Lorem.paragraph(5) }
    image_url { Faker::Avatar.image }
    topic

    trait :critical do
      urgent true
    end
  end

  factory :script do
    script { "Hi, my name is %{name} and I’m a constituent of %{constituent_of}. #{Faker::Lorem.paragraph(5)}" }
    phone "2124797990"
    issue
  end
end
