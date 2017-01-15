# == Schema Information
#
# Table name: scripts
#
#  id       :integer          not null, primary key
#  script   :text
#  phone    :string
#  issue_id :integer
#

class Script < ActiveRecord::Base
  belongs_to :issue

  def script_for_user(user)
    to_replace = script.scan(/%\{(.*?)\}/).flatten

    replacements = []
    to_replace.each { |var| replacements << [var, user.send(var.to_sym)] }

    new_script = script

    replacements.each do |key, value|
      new_script.gsub!(/%\{(#{key})\}/, value)
    end

    new_script
  end
end
