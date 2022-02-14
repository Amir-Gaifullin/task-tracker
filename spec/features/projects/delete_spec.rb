require 'rails_helper'

describe 'Delete project' do
  include_context 'when current user signed in'

  let(:project) { create(:project, name: 'New Project') }

  before { visit project_path(project) }

  it 'User deletes project' do
    click_on 'Delete'

    expect(page).to have_content('Project was successfully destroyed.')
    expect(page).not_to have_content('New Project')
    expect(project.reload).to be_deleted
  end
end
