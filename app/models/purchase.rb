class Purchase < ActiveRecord::Base
  has_many :prices
  accepts_nested_attributes_for :prices, allow_destroy: true #, :reject_if => proc { |attributes| attributes['provisional'].blank? }
  attr_accessible :date, :prices_attributes, :status
end
