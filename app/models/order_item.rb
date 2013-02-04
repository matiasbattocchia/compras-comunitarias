class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :prices
  attr_accessible :quantity
end
