class Payment < ActiveRecord::Base
  belongs_to :feed_table
  attr_accessible :amount
end
