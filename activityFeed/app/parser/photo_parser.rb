module PhotoParser
	def parse(json)
		parsed_photo = json_parse(json)
		options = {:url => parsed_photo["url"],
							 :text => parsed_photo["text"],
							 :image_thumb => parsed_photo["image_thumb"],
							 :image_large => parsed_photo["image_large"],
							 :message => parsed_photo["message"],
							:time => parsed_photo["time"]
  	}

		Photo.new(options)
	end

end
