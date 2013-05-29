module LinkParser
	def parse(json)
		parsed_link = json_parse(json)
		options = {:name => parsed_link["name"],
							:added_text => parsed_link["added_text"],
							:link => parsed_link["link"],
							:time => parsed_link["time"]
							}
			Link.new(options)
	end
end
