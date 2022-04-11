require 'rails_helper'

RSpec.describe 'Edit a profile', type: :feature do
  include_context 'when user signed in'

  it 'user edit a profile' do
    visit edit_user_path(current_user)

    fill_in 'Full name', with: 'Example'
    fill_in 'Email', with: 'example@example.com'
    fill_in 'Password', with: 'example'
    click_button 'Sign up'

    expect(page).to have_current_path(user_path(current_user))
    expect(page).to have_content('Example')
    expect(page).to have_content('example@example.com')
  end
end
