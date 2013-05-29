module NotificationParser
	def parse(json)
		parsed_notification = json_parse(json)
		options = {:text => parsed_notification["text"],
							:time => parsed_notification["time"]
							}
		Notification.new(options)
	end
end
