class EventsController < ApplicationController

  def create
    # byebug
    @event = Event.create(event_params)
  end

  private
  def event_params
    params.permit(:title, :start, :end, :user_id)
  end

end