FactoryBot.define do
  factory :task do
    user
    project
    sequence(:title) { |n| "Task ##{n}" }
    description { Faker::Lorem.paragraph }
    deadline_at { 1.day.from_now }
  end
end
