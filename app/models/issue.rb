# == Schema Information
#
# Table name: issues
#
#  id          :integer          not null, primary key
#  title       :string
#  urgent      :boolean          default("false")
#  effort      :integer
#  expires_at  :datetime
#  description :text
#  expectation :text
#  image_url   :text
#  video_url   :text
#  topic_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Issue < ActiveRecord::Base
  validates_presence_of :title, :effort, :expires_at, :description, :expectation, :topic
  validates_inclusion_of :urgent, in: [true, false]
  belongs_to :topic
end
