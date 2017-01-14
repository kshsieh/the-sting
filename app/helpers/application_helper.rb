require 'rounding'

module ApplicationHelper
  def effort_to_string(int)
    "< #{int.ceil_to(5)} minutes"
  end

  def issues_count_to_string(int)
    string = int > 1 ? "current issues" : "current issue"
    "#{int} #{string}"
  end
end
