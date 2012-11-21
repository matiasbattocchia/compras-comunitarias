class FeedTable < ActiveRecord::Base
  belongs_to :basic_unit
  belongs_to :attendance
  has_many :payments
  has_many :orders
  attr_accessible :balance, :close_time, :modality, :open_time, :other_activities, :sale_address, :unload_address
end
