if Rails.env == "production"
  DOMAIN_URL = 'http://www.activityfeed.com'
  DOMAIN_NAME = 'sample.com'
  DEFAULT_IMAGE = '/images/default_profile.jpg'
  ENVIRONMENT_NAME = "ActivityFeed"
elsif Rails.env == "development"
  DOMAIN_URL = 'http://localhost:3000'
  DOMAIN_NAME = 'localhost.com'
  DEFAULT_IMAGE = '/images/default_profile.jpg'
  ENVIRONMENT_NAME = "activityfeed_development"
else
  DOMAIN_URL = 'http://activityfeeddev.com:3000'
  DOMAIN_NAME = 'sampledev.com'
  DEFAULT_IMAGE = '/images/default_profile.jpg'
  ENVIRONMENT_NAME = "activityfeed_dev"
end
