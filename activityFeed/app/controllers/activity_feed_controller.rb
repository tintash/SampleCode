class ActivityFeedController < ApplicationController
	respond_to :json, :html
	before_filter :require_user
	before_filter :validate_lookup_type, :only => [:create]

	caches_action :index, :show
	cache_sweeper :activity_feed_sweeper

	def index
	  @parsed_activities = Array.new
		activities = ActivityFeed.by_user(params[:user_id])
		activities.each do |activity|
			@parsed_activities << parse_activity(activity)
		end
		respond_with @parsed_activities
	end

	def create
		activity_type = Object.const_get(LOOKUP_ARRAY[params[:lookup_id].to_i].gsub("_",""))
		activity = activity_type.new(params[:query])
		obj = activity.saveActivity(params[:user_id], params[:lookup_id])
		respond_to do |format|
			format.html
			format.json { render json: parse_activity(obj) }
		end
	end

	def show
	 	activity = ActivityFeed.by_user(params[:user_id]).find_by_id(params[:id])
	  respond_with parse_activity(activity)
	end

	def destroy
		activity = ActivityFeed.by_user(params[:user_id]).find_by_id(params[:id])
		activity.destroy unless(activity.nil?)
		status = {:status => 'deleted'}
		respond_to do |format|
			format.json { render json: status }
		end
	end


end
