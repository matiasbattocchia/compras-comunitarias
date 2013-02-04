class Order < ActiveRecord::Base
#  belongs_to :feed_table
  has_many :order_items

#  before_save :sum_weight, :sum_with_freight_cost, :sum_crate_cost

#  def sum_weight
#    sum = 0
#    line_bundles.each { |line_bundle| sum += line_bundle.bundle.weight * line_bundle.quantity }
#    self[:weight] = sum
#  end

#  def sum_with_freight_cost
#    sum = 0
#    line_bundles.each { |line_bundle| sum += line_bundle.bundle.with_freight_cost * line_bundle.quantity }
#    self[:with_freight_cost] = sum
#  end
  
#  def sum_crate_cost
#    sum = 0
#    line_bundles.each { |line_bundle| sum += line_bundle.bundle.crate_cost * line_bundle.quantity }
#    self[:crate_cost] = sum
#  end
end
