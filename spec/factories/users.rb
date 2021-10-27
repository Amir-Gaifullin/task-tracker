FactoryBot.define do
  factory :project do
    user
    sequence(:name) { |n| "Project ##{n}" }
    description { Faker::Lorem.paragraph }
  end
  factory :task do
    user
    sequence(:name) { |n| "Task ##{n}" }
    description { Faker::Lorem.paragraph }
  end
end