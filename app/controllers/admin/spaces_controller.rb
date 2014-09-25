class Admin::SpacesController < AdminController

  before_action :find_space

  def edit  
    #binding.pry
  end

  def update
    if @space.update(space_params)
      redirect_to :back
    else
      render :edit
    end
  end


  private

  def find_space
    @space = Space.first
  end

  def space_params
    params.require(:space).permit(:photos_attributes => [:id, :image, :_destroy])
  end

end
