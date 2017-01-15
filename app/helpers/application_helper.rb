require 'rounding'

module ApplicationHelper
  def estimated_effort_to_string(int)
    rounded = int.ceil_to(5) 
    rounded > 1 ? "< #{rounded} minutes" : "< #{rounded} minute"
  end

  def effort_to_string(int)
    int > 1 ? "#{int} minutes" : "#{int} minute"
  end

  def issues_count_to_string(int)
    string = int > 1 ? "current issues" : "current issue"
    "#{int} #{string}"
  end

  def button_is_active?(type, path)
    klass = 'nav-button'
    klass += ' nav-button--active' if type == path
    klass
  end
end
