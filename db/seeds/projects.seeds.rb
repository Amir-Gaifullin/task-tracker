after :projects do
  user_1 = User.first
  user_2 = User.second
  user_3 = User.third

  FactoryBot.create(:project, name: 'Learning Front', description: Faker::Lorem.paragraph, user: user_2 )
  FactoryBot.create(:project, name: 'Learning OOP', description: Faker::Lorem.paragraph, user: user_1 )
  FactoryBot.create(:project, name: 'Learning BackEnd', description: Faker::Lorem.paragraph, user: user_3 )
end
