class Admin::RentsController < AdminController

  before_action :find_rent

  def edit  
  end

  def update
    if @rent.update(rent_params)
      redirect_to :back
    else
      render :edit
    end
  end


  private

  def find_rent
    @rent = Rent.first
  end

  def rent_params
    params.require(:rent).permit(:photos_attributes => [:id, :image, :_destroy])
  end
end
