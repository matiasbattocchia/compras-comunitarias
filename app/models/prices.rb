class Prices < ActiveRecord::Base
  belongs_to :product
  belongs_to :purchase
  has_many   :order_items
  attr_accessible :cost, :crate, :preselected, :product_id, :provisional, :purchase, :sale
end
