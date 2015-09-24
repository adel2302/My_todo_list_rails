class EventsController < ApplicationController
  def home
  	@events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  end

  def create
  	Event.create date: params[:date], time: params[:time], title: params[:title], content: params[:content]
  	redirect_to "/"
  end

  def update
    Event.find(params[:id]).update date: params[:date], time: params[:time], title: params[:title], content: params[:content]
    redirect_to '/'
  end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to '/'
  end
end
