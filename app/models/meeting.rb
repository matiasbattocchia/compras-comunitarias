class Meeting < ActiveRecord::Base
  has_many :attendances
  attr_accessible :date
end
