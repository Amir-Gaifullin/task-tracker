FactoryBot.define do
  factory :comment do
    user_id
    task_id
    content { Faker::Lorem.paragraph }
  end
end
