class EventTypesController < ApplicationController
  def index
    @event_types = EventType.all
  end
  
  def show
    @event_type = EventType.find(params[:id])
  end
  
  def new
    @event_type = EventType.new
  end
  
  def create
    @event_type = EventType.new(params[:event_type])
    if @event_type.save
      flash[:notice] = "Successfully created event type."
      redirect_to @event_type
    else
      render :action => 'new'
    end
  end
  
  def edit
    @event_type = EventType.find(params[:id])
  end
  
  def update
    @event_type = EventType.find(params[:id])
    if @event_type.update_attributes(params[:event_type])
      flash[:notice] = "Successfully updated event type."
      redirect_to @event_type
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @event_type = EventType.find(params[:id])
    @event_type.destroy
    flash[:notice] = "Successfully destroyed event type."
    redirect_to event_types_url
  end
end
