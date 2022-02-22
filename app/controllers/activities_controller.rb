class ActivitiesController < ApplicationController
  def create
    @activity = Activity.new(params["activity"])
    @activity.user_id = @current_user.id # logs the user for each new activity
    @activity.save
    redirect_to "/contacts/#{@activity.contact_id}"
  end
end
