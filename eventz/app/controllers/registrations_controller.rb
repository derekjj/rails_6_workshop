class RegistrationsController < ApplicationController
    def index
        # @event = Event.find(1)
        # @registrations = Registration.all

        @event = Event.find(params[:event_id])
        @registrations = @event.registrations
    end
end
