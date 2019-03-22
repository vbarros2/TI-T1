Rails.application.routes.draw do

  	resources :planets do
  		get 'planets/:id'=> 'planets#show'
  	end
  	resources :starships do
  		get 'starships/:id'=> 'starships#show'
  	end
  	
  	resources :characters do
  		get 'characters/:id'=> 'characters#show'
  	end
  	
	root 'films#index'
  	resources :films do
  		get 'films/:id'=> 'films#show'
  	end
		
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
