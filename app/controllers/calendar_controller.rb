class CalendarController < ApplicationController
  
  def index
    @month = params[:month].to_i
    @year = params[:year].to_i

    @shown_month = Date.civil(@year, @month)

    @first_day_of_week = 1
    @event_strips = Event.event_strips_for_month(@shown_month, @first_day_of_week)
  end
  
  def day
    redirect_to :controller => :events, :action => 'new'
  end
  
end