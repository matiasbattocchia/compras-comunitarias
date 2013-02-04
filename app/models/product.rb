class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :prices
  attr_accessible :description, :quantity, :weight, :supplier_id
end
