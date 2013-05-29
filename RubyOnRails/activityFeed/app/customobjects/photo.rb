class Photo < Base
  attr_accessor :text, :url, :image_thumb, :image_large, :message, :title, :milestones, :tags, :description, :time

  include ContainPicture

  contains_picture :thumb => :image_thumb,
                   :large => :image_large,
                   :original => :url,
                   :default => DEFAULT_IMAGE

	def initialize(params)
		super(params)
		@asset_type = "photo"
	end

end
