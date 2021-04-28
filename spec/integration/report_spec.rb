require 'rails_helper'
RSpec.describe 'Monthly Reports', type: :system do
  describe 'Monthly Reports page' do
    it 'shows Monthly Report ' do
      user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
      login_as(user, :scope => :user)
      visit monthly_report_path
      expect(page).to have_content('Monthly Report')
    end
    it 'shows Report for ' do
      user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
      login_as(user, :scope => :user)
      visit monthly_report_path
      expect(page).to have_content('Report for')
    end
  end
end