module CalendarHelper
  def month_link(month_date)
    link_to(I18n.localize(month_date, :format => "%B"), {:month => month_date.month, :year => month_date.year})
  end
  
  # custom options for this calendar
  def event_calendar_opts
    { 
      :year => @year,
      :month => @month,
      :event_strips => @event_strips,
      :month_name_text => I18n.localize(@shown_month, :format => "%B %Y"),
      :previous_month_text => "<< " + month_link(@shown_month.last_month),
      :next_month_text => month_link(@shown_month.next_month) + " >>",
      :use_all_day => true,
      :link_to_day_action => "day",
      :first_day_of_week => @first_day_of_week
    }
  end

  def event_calendar
    # args is an argument hash containing :event, :day, and :options
    calendar event_calendar_opts do |args|
      event, day = args[:event], args[:day]
      html = %(<a href="/events/#{event.id}" title="#{h(event.name)}">)
      html << display_event_time(event, day)
      html << %(#{h(event.name)}</a>)
      html
    end
  end
  
  def display_event_time(event, day)
    time = event.start_at
    if !event.all_day and time.to_date == day
      # try to make it display as short as possible
      fmt = (time.min == 0) ? "%H" : "%H:%M"
      t = time.strftime(fmt)
      %(<span class="ec-event-time">#{t}</span>)
    else
      ""
    end
  end
  
end