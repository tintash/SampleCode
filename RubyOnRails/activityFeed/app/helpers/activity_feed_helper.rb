module ActivityFeedHelper

	def render_feed(activities)
		feed_html = ""

		if !activities.nil? && activities.size > 0
			activities = activities.reverse
			activities.each do |activity|
			feed_html << render_activity(activity)
			end
		else
			feed_html << "<h2>No activity yet</h2>"
		end
    feed_html
	end

	def render_activity(activity)
		activity_name = activity.asset_type
		if activity_name != false
			render :partial => "activities/"+activity_name.downcase(), :locals => { :parsed_obj => activity}
    end
	end

	def showTime(curr_time)
    date_now = (Time.now.utc).to_s.split(" ")[0].to_s
    date_feed = Date.parse(curr_time).to_s
    time_feed = (Time.parse(curr_time)).to_s.split(" ")[1].to_s
    curr_time = (Time.parse(date_feed+" "+time_feed))

		if (date_now == date_feed)
			if(!curr_time.nil?)
		  	curr_time = Time.parse(curr_time.to_s)
		  	curr_time = curr_time.strftime("%Y-%m-%d %H:%M:%S")
		  	return distance_of_time_in_words(curr_time, Time.now.utc)
		  else
		  	return time_ago_in_words Time.now
		 	end
		else
		   curr_time = Time.parse(curr_time.to_s)
		   return curr_time.strftime("%A, %b %d, %Y at %H:%M%p")
		end
  end

end
