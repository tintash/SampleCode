SampleProject::Application.routes.draw do

	resources :user do
  	resources :activity_feed
	end

end
