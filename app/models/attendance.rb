class Attendance < ActiveRecord::Base
  has_one :feed_table
  belongs_to :meeting
  # attr_accessible :title, :body
end
