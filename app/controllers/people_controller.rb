class PeopleController < ApplicationController
    def create
        @event = Event.find(params[:event_id])
        @person = @event.people.create(person_params)
        redirect_to event_path(@event)
    end
    
    private
    def person_params
      params.require(:person).permit(:name)
    end
    
end
