class BasicUnit < ActiveRecord::Base
  has_many :feed_tables
  attr_accessible :address, :commune, :name, :neighborhood
end
