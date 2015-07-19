Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'staticpages#index'
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  resources :users
  resources :trips
  resources :nodes

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/travizi' => 'staticpages#travizi'
  get '/madliberator' => 'staticpages#madliberator'
  get '/appliedmeaning' => 'staticpages#appliedmeaning'
  get '/qwickbit' => 'staticpages#qwickbit'
  get '/gotbread' => 'staticpages#gotbread'
  get '/developer' => 'staticpages#jefferson'
  get '/crowdtap' => 'staticpages#crowdtap'
  get '/costaricacafe' => 'staticpages#costaricacafe'

end
