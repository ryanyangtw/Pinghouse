class Admin::ActivitiesController < AdminController

  before_action :find_activity

  def edit  
  end

  def update
    if @activity.update(activity_params)
      redirect_to :back
    else
      render :edit
    end
  end


  private

  def find_activity
    @activity = Activity.first
  end

  def activity_params
    params.require(:activity).permit(:photos_attributes => [:id, :image, :_destroy])
  end
end
