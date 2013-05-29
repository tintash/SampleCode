class Lookup < ActiveRecord::Base
  attr_accessible :id, :type
  
  has_many :feeds
end
