class SmurfProfilesController < ApplicationController
  def new
    @smurf_profile = SmurfProfile.new
  end

  def create
    @smurf_profile = SmurfProfile.new(params[:smurf_profile])
    if @smurf_profile.save
      flash[:notice] = 'Profile Created'
      redirect_to new_smurf_profile_path
    else
      render "new"
    end
  end
end
