class ActivityFeedSweeper < ActionController::Caching::Sweeper
  observe ActivityFeed

  def after_create(activity)
    expire_all_cache_for(activity)
  end

  def after_update(activity)
    expire_cache_for(activity)
    expire_all_cache_for(activity)
  end

  def after_destroy(activity)
    expire_cache_for(activity)
    expire_all_cache_for(activity)
  end

  private
  def expire_cache_for(activity)
    expire_action(:controller => 'activity_feed', :action => 'show', :id => activity.id, :user_id => activity.user_id, :format => 'json')
  end

  def expire_all_cache_for(activity)
    expire_action(:controller => 'activity_feed', :action => 'index', :user_id => activity.user_id, :format => 'json')
  end

end
