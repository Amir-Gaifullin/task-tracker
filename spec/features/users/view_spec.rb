require 'rails_helper'

RSpec.describe 'View a user profile', type: :feature do
  include_context 'when user signed in'
  let(:user) { create(:user) }

  it 'User views a profile' do
    visit user_url(user)
    expect(page).to have_content('Rasim')
  end
end
