class PlantsController < ApplicationController

  before_filter :assert_event
  respond_to :json, :only => [:create, :show]

  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }

  # POST /events/:event_id/plants
  def create
    @plant = @event.plants.create(params[:plant])
    respond_with(@event, @plant)
  end

  # GET /events/:event_id/plant/:id
  def show
    @plant = @event.plants.find(params[:id])
    respond_with(@event, @plant, :include => [:token])
  end

  protected

  def assert_event
    @event = Event.find(params[:event_id])
  end

end
