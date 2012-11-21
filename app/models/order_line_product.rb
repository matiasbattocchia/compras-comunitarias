class OrderLineProduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  attr_accessible :quantity, :product_id
end
