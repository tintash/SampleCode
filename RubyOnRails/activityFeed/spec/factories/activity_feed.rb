FactoryGirl.define do

  factory :lookup do
  	id 1
		l_type "Status"
  end

  factory :user do
  	id 1
  	email 'test@domain.com'
  	name 'testing'
  end

  factory :activity_feed do
    lookup_id 1
    user_id 1
  	json '{"created_at":"1316153148000","time":"2011-09-16 11:05:48 +0500","text":"Basic rule of RoR is DRY :) ","asset_type":"status"}'
  end

end