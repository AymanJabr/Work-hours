module ApplicationHelper
  def menu_link_to(link_text, link_path)
    class_name = current_page?(link_path) ? 'menu-item active' : 'menu-item'

    content_tag(:div, class: class_name) do
      link_to link_text, link_path
    end
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def page_currently_on
    return "#{current_user.name} Profile Page" if request.path == '/'
    return 'All My Transactions' if request.path == '/workhours'
    return 'All My Unassigned Transactions' if request.path == '/index_external'
    return 'All Groups' if request.path == '/groups'
    return 'Monthly Report' if request.path == '/monthly_report'
    return 'User Log In' if request.path == '/users/sign_in'
    return 'User Sign Up' if request.path == '/users/sign_up'

    ''
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
