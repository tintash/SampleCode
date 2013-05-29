class	Base < Bmodel
	attr_accessor :id, :time, :created_at, :asset_type

	def initialize(params)
    @created_at = (Time.now.to_i*1000).to_s
		@time = (Time.now).to_s
		super(params)
	end

  def saveActivity(user_id, lookup_id)
		activity = ActivityFeed.new
		activity.lookup_id = lookup_id
		activity.user_id = user_id
		activity.json = self.to_json
		activity.save
		activity
  end



end
