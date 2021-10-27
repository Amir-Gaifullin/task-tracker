require 'rails_helper'

RSpec.describe 'View a task', type: :feature do
  include_context 'when user signed in'

  let(:project) { create(:project, name: 'A test project') }
  let(:task) { create(:task, name: 'A test task')}
  # create(:task, name: 'A test task') 

  scenario 'User views a task' do
    visit tasks_url(task)

    expect(page).to have_content('A test task')
  end
end