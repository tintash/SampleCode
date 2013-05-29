module StatusParser

	def parse(json)
		parsed_status = json_parse(json)
		options = {:text => parsed_status["text"],
							 :time => parsed_status["time"]}
		Status.new(options)
	end

end
