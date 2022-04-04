require 'rails_helper'

RSpec.describe 'Delete a comment', type: :feature do
  include_context 'when user signed in'

  let(:task) { create(:task, title: 'Example task', user_id: current_user.id) }
  let(:comment) { create(:comment, task_id: task.id, user_id: current_user.id) }

  it 'user try to delete a comment' do
    visit task_path(task)

    click_on 'Destroy'
    expect(page).to have_no_content(comment.content)
  end

  context 'when user is not author of the comment' do
    let(:task) { create(:task, title: 'Example task', user_id: current_user.id + 1) }
    let(:comment) { create(:comment, task_id: task.id, user_id: current_user.id) }

    it 'not allowed user try to destroy the comment' do
      visit task_path(task)

      click_on 'Destroy'
      expect(page).to have_content('not allowed')
    end
  end
end
