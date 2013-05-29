class Link < Base
  attr_accessor :added_text, :link, :name, :time

	def initialize(params)
		super(params)
		@asset_type = "link"
	end

end
