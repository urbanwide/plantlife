class PlantsController < ApplicationController

  before_filter :assert_event
  respond_to :json, :only => [:create]
  
  def create
    @attempt = @event.plants.build(params[:plant])
    @plant.save

    respond_with(@plant)
  end

end
