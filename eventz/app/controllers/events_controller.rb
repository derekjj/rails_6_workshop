class EventsController < ApplicationController
  def index
    # @events = ["BugSmash", "Hackathon", "Kata Camp", "Rails User Group"]
    @events = Event.all
  end
end
