class Parser

	def json_parse(json_string)
    ActiveSupport::JSON.decode(json_string)
  end

end
