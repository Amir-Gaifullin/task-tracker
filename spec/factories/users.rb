FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    full_name { 'Rasim' }
    password { '123456' }
  end
end
