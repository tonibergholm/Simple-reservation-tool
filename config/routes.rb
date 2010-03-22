ActionController::Routing::Routes.draw do |map|
  map.resources :event_types

  map.signup 'signup', :controller => 'users', :action => 'new'
  map.logout 'logout', :controller => 'sessions', :action => 'destroy'
  map.login 'login', :controller => 'sessions', :action => 'new'
  map.resources :sessions

  map.resources :users

  map.resources :events
  map.calendar '/calendar/:year/:month', :controller => 'calendar', :action => 'index', :year => Time.zone.now.year, :month => Time.zone.now.month
  map.calendar_day "/calendar/:year/:month/:day", :controller => "calendar", :action => "day"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => :calendar, :year => Time.zone.now.year, :month => Time.zone.now.month
end
