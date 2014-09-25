class Admin::HomesController < AdminController

  before_action :find_home

  def edit   
  end

  def update
    if @home.update(home_params)
      redirect_to :back
    else
      render :edit
    end
  end


  private

  def find_home
    @home = Home.first
  end

  def home_params
    params.require(:home).permit(:photos_attributes => [:id, :image, :_destroy])
  end
end
