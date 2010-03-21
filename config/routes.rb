ActionController::Routing::Routes.draw do |map|
  map.resources :events
  map.calendar '/calendar/:year/:month', :controller => 'calendar', :action => 'index', :year => Time.zone.now.year, :month => Time.zone.now.month
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => :calendar, :year => Time.zone.now.year, :month => Time.zone.now.month
end
