require 'rails_helper'

RSpec.describe 'Delete project', type: :feature do
  include_context 'when user signed in'

  let(:project) do
    create(:project, name: 'Example',
                     user: current_user)
  end

  it 'User delete project' do
    visit projects_path(project)

    click_on 'Destroy'

    expect(page).to have_no_current_path(projects_path(project))
    expect(page).to have_no_content('Example')
  end
end
