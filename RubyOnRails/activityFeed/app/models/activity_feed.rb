class ActivityFeed < ActiveRecord::Base
  attr_accessible :id, :is_active, :json, :lookup_id, :user_id

  belongs_to :user
  belongs_to :lookup

  validates :user_id,  :presence => true

  scope :by_user, lambda { |id|
    id.blank? ? scoped : where(:user_id => id)
  }
end
