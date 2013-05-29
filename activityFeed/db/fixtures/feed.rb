require "#{Rails.root}/db/fixtures/user.rb"
require "#{Rails.root}/db/fixtures/lookup.rb"


ActivityFeed.seed do |feed|
	feed.lookup_id = 1
	feed.user_id = 1
	feed.json = '{"created_at":"1316153148000","time":"2011-09-16 11:05:48 +0500","text":"Basic rule of RoR is DRY :) ","asset_type":"status"} '
end

ActivityFeed.seed do |feed|
	feed.lookup_id = 4
	feed.user_id = 1
	feed.json = '{"created_at":"1316153148000","time":"2011-09-16 11:05:48 +0500","added_text":"Facebook is a social utility that connects people with friends and others who work, study and live around them.", "link":"http://www.facebook.com/", "asset_type":"link"} '
end

ActivityFeed.seed do |feed|
	feed.lookup_id = 4
	feed.user_id = 1
	feed.json = '{"created_at":"1316153148000","time":"2011-09-16 11:05:48 +0500","added_text":"A Programmer\'s best friend", "link":"http://www.ruby-lang.org/en/", "asset_type":"link"} '
end

ActivityFeed.seed do |feed|
	feed.lookup_id = 2
	feed.user_id = 1
	feed.json = '{"created_at":"1315896922223","time":"2011-09-13 11:55:27 +0500","url":"http://t2.gstatic.com/images?q=tbn:ANd9GcSmj2fvXCrbBwvNpAqSbrJKZhBXYKT99PFqvUTZvBeO3Gxy-fyq","text":"","image_thumb":"http://t2.gstatic.com/images?q=tbn:ANd9GcSmj2fvXCrbBwvNpAqSbrJKZhBXYKT99PFqvUTZvBeO3Gxy-fyq","image_large":"http://t2.gstatic.com/images?q=tbn:ANd9GcSmj2fvXCrbBwvNpAqSbrJKZhBXYKT99PFqvUTZvBeO3Gxy-fyq","message":"Uploaded successfully.","asset_type":"photo"}'
end


ActivityFeed.seed do |feed|
	feed.lookup_id = 1
	feed.user_id = 1
	feed.json = '{"created_at":"1316153148000","time":"2011-10-16 11:05:48 +0500","text":"Ruby: A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.","asset_type":"status"} '
end

ActivityFeed.seed do |feed|
	feed.lookup_id = 2
	feed.user_id = 1
	feed.json = '{"created_at":"1315896715308","time":"2011-09-13 11:51:58 +0500","url":"http://jet-computing.com/wp-content/uploads/2011/11/Feed_Icon_Bl-Or.png","text":"","image_thumb":"http://jet-computing.com/wp-content/uploads/2011/11/Feed_Icon_Bl-Or.png","image_large":"http://jet-computing.com/wp-content/uploads/2011/11/Feed_Icon_Bl-Or.png","message":"Uploaded successfully.","source":"batch","asset_type":"photo"}'
end

ActivityFeed.seed do |feed|
	feed.lookup_id = 2
	feed.user_id = 1
	feed.json = '{"created_at":"1315896922223","time":"2011-09-13 11:55:27 +0500","url":"http://increaserss.com/wp-content/uploads/rss-feeds-.jpg","text":"","image_thumb":"http://increaserss.com/wp-content/uploads/rss-feeds-.jpg","image_large":"http://increaserss.com/wp-content/uploads/rss-feeds-.jpg","message":"Uploaded successfully.","asset_type":"photo"}'
end


ActivityFeed.seed do |feed|
	feed.lookup_id = 1
	feed.user_id = 1
	feed.json = '{"created_at":"1316153148000","time":"2011-09-22 11:05:48 +0500","text":"Ruby 2.0.0 is the first stable release of the Ruby 2.0 series, with many new features and improvements in response to the increasingly diverse and expanding demands for Ruby","asset_type":"status"} '
end

ActivityFeed.seed do |feed|
	feed.lookup_id = 1
	feed.user_id = 1
	feed.json = '{"created_at":"1316153148000","time":"2011-09-22 11:05:48 +0500","text":"I\'m selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can\'t handle me at my worst, then you sure as hell don\'t deserve me at my best.","asset_type":"status"} '
end

ActivityFeed.seed do |feed|
	feed.lookup_id = 1
	feed.user_id = 1
	feed.json = '{"created_at":"1316153148000","time":"2011-09-22 11:05:48 +0500","text":"You know you\'re in love when you can\'t fall asleep because reality is finally better than your dreams.","asset_type":"status"} '
end

ActivityFeed.seed do |feed|
	feed.lookup_id = 2
	feed.user_id = 1
	feed.json = '{"created_at":"1315896922223","time":"2011-09-13 11:55:27 +0500","url":"http://blog.bounceweb.com/wp-content/uploads/2010/09/Tools-for-Ruby-on-Rails-logo.jpg","text":"","image_thumb":"http://blog.bounceweb.com/wp-content/uploads/2010/09/Tools-for-Ruby-on-Rails-logo.jpg","image_large":"http://blog.bounceweb.com/wp-content/uploads/2010/09/Tools-for-Ruby-on-Rails-logo.jpg","message":"Uploaded successfully.","asset_type":"photo"}'
end

ActivityFeed.seed do |feed|
	feed.lookup_id = 2
	feed.user_id = 1
	feed.json = '{"created_at":"1315896922223","time":"2011-09-13 11:55:27 +0500","url":"http://blog.dataart.com/wp-content/uploads/2013/03/ruby2.jpg","text":"","image_thumb":"http://blog.dataart.com/wp-content/uploads/2013/03/ruby2.jpg","image_large":"http://blog.dataart.com/wp-content/uploads/2013/03/ruby2.jpg","message":"Uploaded successfully.","asset_type":"photo"}'
end
