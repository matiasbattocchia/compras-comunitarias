class Product < ActiveRecord::Base
  has_many :line_bundles
  attr_accessible :cost, :freight_modifier, :name, :price_modifier, :quantity, :weight

  def price
    cost + (cost * freight_modifier) / 100
  end
end
