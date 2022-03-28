after :users do
  FactoryBot.create(:user, full_name: "Mikhail Kilin", email: "mikhail_kilin@example.com")
  FactoryBot.create(:user, full_name: "Dima Barskov", email: "dima_barskov@example.com")
  FactoryBot.create(:user, full_name: "Rasim Khusaenov", email: "rasim_khusaenov@example.com")
end
