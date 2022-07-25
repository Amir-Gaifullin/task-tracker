FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    full_name { 'Rasim' }
    password { '123456' }
  end
  trait :with_avatar do
    avatar { File.open(Rails.root.join("spec", "fixtures", "images","avatar.png")) }
  end
end
