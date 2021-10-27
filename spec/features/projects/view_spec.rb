# require 'rails_helper'

# RSpec.describe 'View a Project', type: :feature do
# 	let(:project){Project.create(name: 'A test Project', user: user)}
# 	let(:user){User.create(email: 'test@example.com', password:'12345567')}

# 	let(:current_user_attributes){{email: 'current_user@example.org', password: '1234567'}}

# 	before do
# 		visit new_session_path 
		
# 		fill_in 'Email', with: current_user_attributes[:email]
# 		fill_in 'Password', with: current_user_attributes[:password]

# 		click_button 'Log in'
# 	end
# 	scenario 'User views a Project' do
# 		visit projects_url(project)

# 		expect(page).to have_content('A test Project')
# 	end
# end 
require 'rails_helper'

RSpec.describe 'View a project', type: :feature do
  include_context 'when user signed in'

  let(:project) { create(:project, name: 'A test project') }

  scenario 'User views a project' do
    visit project_url(project)

    expect(page).to have_content('A test project')
  end
end