class LineBundle < ActiveRecord::Base
  belongs_to :order
  belongs_to :bundle
  attr_accessible :quantity, :bundle_id
end
