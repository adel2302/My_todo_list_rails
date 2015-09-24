class EventsController < ApplicationController
  def home
  	@events = Event.all
  end

  def show
  end

  def create
  	Event.create date: params[:date], time: params[:time], title: params[:title], content: params[:content]
  	redirect_to "/"
  end
end
