require 'rails_helper'
RSpec.describe 'Sign up page', type: :system do
  describe 'Sign up Page' do
    it 'shows User Sign Up ' do
      visit new_user_registration_path
      expect(page).to have_content('User Sign Up')
    end
    it 'shows Email ' do
      visit new_user_registration_path
      expect(page).to have_content('Email')
    end
    it 'shows Name ' do
      visit new_user_registration_path
      expect(page).to have_content('Name')
    end
    it 'shows Password ' do
      visit new_user_registration_path
      expect(page).to have_content('Password')
    end
    it 'shows Password confirmation ' do
      visit new_user_registration_path
      expect(page).to have_content('Password confirmation')
    end
    it 'shows Log in ' do
      visit new_user_registration_path
      expect(page).to have_content('Log in')
    end
  end
end