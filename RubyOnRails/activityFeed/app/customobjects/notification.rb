class Notification < Base
  attr_accessor :text, :time

	def initialize(params)
		super(params)
		@asset_type = "notification"
	end

end
