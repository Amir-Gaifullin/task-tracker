require 'rails_helper'

RSpec.describe 'Edit a project', type: :feature do
  include_context 'when user signed in'

  let(:project) { create(:project, user: current_user) }

  it 'user edit a project' do
    visit edit_project_path(project)

    fill_in 'Name', with: 'A new name for the project'
    fill_in 'Description', with: 'Another description'
    click_button 'Update Project'

    expect(page).to have_current_path(project_path(project))
    expect(page).to have_content('A new name for the project')
    expect(page).to have_content('Another description')
  end

  context 'when user is not author of the project' do
    let(:project) { create(:project) }

    it 'user tries to edit the project' do
      visit edit_project_path(project)

      expect(page).to have_current_path(projects_path)
      expect(page).to have_content('not allowed')
    end
  end
end
