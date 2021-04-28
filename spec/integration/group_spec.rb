require 'rails_helper'
RSpec.describe 'Group Page', type: :system do
  describe 'Group Page' do
    it 'shows All Groups ' do
      user = User.create!(email: 'test@example.com', password: 'f4k3p455w0rd')
      login_as(user, scope: :user)
      visit groups_path
      expect(page).to have_content('All Groups')
    end
    it 'shows Create new Group button ' do
      user = User.create!(email: 'test@example.com', password: 'f4k3p455w0rd')
      login_as(user, scope: :user)
      visit groups_path
      expect(page).to have_content('Create new Group')
    end
  end
end
