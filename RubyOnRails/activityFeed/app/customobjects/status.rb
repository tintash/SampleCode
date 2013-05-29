class Status < Base
  attr_accessor :text, :time

	def initialize(params)
		super(params)
		@asset_type = "status"
		@lookup_id = 1
	end

end
