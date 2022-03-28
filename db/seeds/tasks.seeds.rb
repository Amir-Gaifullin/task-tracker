after :tasks do
  user_1 = User.first
  user_2 = User.second
  user_3 = User.third

  project_1 = Project.first
  project_2 = Project.second
  project_3 = Project.third


  FactoryBot.create(:task, project: project_1, title: 'Setup React', description: Faker::Lorem.paragraph, deadline_at: 1.day.from_now, user_id: user_2)
  FactoryBot.create(:task, project: project_1, title: 'Install Storm', description: Faker::Lorem.paragraph, deadline_at: 2.day.from_now, user_id: user_1)
  FactoryBot.create(:task, project: project_2, title: 'Learn Barbara Liskiva', description: Faker::Lorem.paragraph, deadline_at: 3.day.from_now, user_id: user_2)
  FactoryBot.create(:task, project: project_3, title: 'Install Sublime', description: Faker::Lorem.paragraph, deadline_at: 4.day.from_now, user_id: user_3)
end
