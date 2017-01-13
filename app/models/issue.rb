# == Schema Information
#
# Table name: issues
#
#  id          :integer          not null, primary key
#  title       :string
#  urgent      :boolean
#  effort      :integer
#  expires_at  :datetime
#  description :text
#  expectation :text
#  topic_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Issue < ActiveRecord::Base
end
