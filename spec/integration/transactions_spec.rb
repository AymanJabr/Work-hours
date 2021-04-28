require 'rails_helper'
RSpec.describe 'All My Transactions Page', type: :system do
  describe 'Transactions' do
    it 'shows All My Transactions ' do
      user = User.create!(email: 'test@example.com', password: 'f4k3p455w0rd')
      login_as(user, scope: :user)
      visit workhours_path
      expect(page).to have_content('All My Transactions')
    end
    it 'shows Add new Workhours button ' do
      user = User.create!(email: 'test@example.com', password: 'f4k3p455w0rd')
      login_as(user, scope: :user)
      visit workhours_path
      expect(page).to have_content('Add new Workhours')
    end
  end
end
