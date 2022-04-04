require 'rails_helper'

RSpec.describe 'Edit a comment', type: :feature do
  include_context 'when user signed in'

  let(:task) { create(:task, title: 'A test task!!!!!!!!!', user_id: current_user.id) }
  let(:comment) { create(:comment, task_id: task.id, user_id: current_user.id) }

  it 'user edit a comment' do
    visit task_path(task)
    within(:css, '#component-table tbody tr:nth-child(2)') do
      find(:css, '#item_ids_').check
    end
    click_on 'Edit'
    fill_in 'Content', with: 'Another description'
    click_button 'Save'

    expect(page).to have_content('Another description')
  end

  context 'when user is not author of the comment' do
    let(:task) { create(:task, title: 'A test task!!!!!!!!!', user_id: current_user.id + 1) }
    let(:comment) { create(:comment, task_id: task.id, user_id: current_user.id) }

    it 'user tries to edit the comment' do
      visit task_path(task)
      click_on 'Edit'
      expect(page).to have_content('not allowed')
    end
  end
end
