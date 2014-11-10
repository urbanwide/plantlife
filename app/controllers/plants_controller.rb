class PlantsController < ApplicationController

  before_filter :assert_event
  respond_to :json, :only => [:create]

  # POST /plants
  def create
    @attempt = @event.plants.build(params[:plant])
    if @plant.save
      respond_with(@plant)
    else
      respond_with({:errors => @plant.errors}, :status => {:msg => "Plant can't be created", :code => 400})
    end
  end

  protected
  def assert_event
    @event = Event.find(params[:event_id])
  end

end
