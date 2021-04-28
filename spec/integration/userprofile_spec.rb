require 'rails_helper'
RSpec.describe 'User Profile Page', type: :system do
  describe 'User Profile' do
    it 'shows Profile ' do
      user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
      login_as(user, :scope => :user)
      visit root_path
      expect(page).to have_content('Profile Page')
    end
  end
end