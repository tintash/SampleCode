class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_user
  	unless(User.find_by_id(params[:user_id]))
  		error = { :error => "Invalid User." }
      respond_with(error, :status => 401 )
    end
  end

  def validate_lookup_type
  	if LOOKUP_ARRAY[params[:lookup_id].to_i].nil?
  		error = { :error => "Invalid lookup type." }
      respond_with(error, :status => 401 )
  	end
  end

  def parse_activity(activity)
  	return [] if activity.nil?
  	parser = Parser.new
 		activity_type = activity.lookup.l_type
 		parser.extend Module::const_get(activity_type.gsub("_","")+"Parser")
 		parse = parser.parse(activity["json"])
 		parse.id = activity.id
 		parse
  end

end
