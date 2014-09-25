class Admin::FoodsController < AdminController

  before_action :find_food

  def edit  
  end

  def update
    if @food.update(food_params)
      redirect_to :back
    else
      render :edit
    end
  end


  private

  def find_food
    @food = Food.first
  end

  def food_params
    params.require(:food).permit(:photos_attributes => [:id, :image, :_destroy])
  end
end
