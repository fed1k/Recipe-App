require 'rails_helper'

RSpec.describe 'Recipes', type: :system do
  describe 'index page' do
    it 'shoud show sign in page' do
      visit recipes_path
      expect(page).to have_text('Log in')
    end

    it 'should be able to navigate to sign up page' do
      visit new_user_session_path
      click_link 'Sign up'
      expect(page).to have_text('Sign up')
    end

    it 'should be able to navigate to Log in page' do
      visit '/users/sign_up'
      click_link 'Log in'
      expect(page).to have_text('Remember me')
    end
  end
end
