# spec/controllers/activity_feed_controller_spec.rb
require 'spec_helper'

describe ActivityFeedController, :type => :controller do

	before (:each) do
    @lookup = FactoryGirl.create(:lookup)
    @user = FactoryGirl.create(:user)
    @activity_feed = FactoryGirl.create(:activity_feed)
  end

	describe "GET 'show'" do
    it "should be successful" do
      get :show, :user_id => @user.id, :id => @activity_feed.id
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "should be successful" do
      get :index, :user_id => @user.id
      response.should be_success
    end
  end

	describe "POST 'create'" do
    it "create a new activity" do
      post :create, :user_id => @user.id, :lookup_id => 1, :query => FactoryGirl.attributes_for(:activity_feed)
      response.should be_success
    end
  end

	describe "DELETE 'destroy'" do
		it "should be successfully deleted" do
			delete :destroy, :user_id => 1, :id => 1
		end
	end

end