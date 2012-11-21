class Bundle < ActiveRecord::Base
  attr_accessible :cost, :crate_cost, :price, :product, :size, :status, :weight, :with_freight_cost
end
