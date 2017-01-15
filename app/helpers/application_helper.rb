require 'rounding'

module ApplicationHelper
  def effort_to_string(int)
    "< #{int.ceil_to(5)} minutes"
  end

  def issues_count_to_string(int)
    string = int > 1 ? "current issues" : "current issue"
    "#{int} #{string}"
  end

  def button_is_active?(type, path)
    klass = 'nav-button'
    klass += ' nav-button--active' if type == path
  end
end
