require 'rounding'

module ApplicationHelper
  def effort_to_string(int)
    "< #{int.ceil_to(5)} minutes"
  end
end
