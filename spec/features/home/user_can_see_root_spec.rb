require 'rails_helper'

RSpec.feature 'User can see root path' do
  context 'guest user' do
    scenario 'sees welcome information' do
      visit '/'

      expect(current_path).to eq(root_path)
      expect(page).to have_content('Sign Up')
      expect(page).to have_content('Log In')
    end
  end
end
