class PagesController < ApplicationController
  

  #before_action :set_page , only: [:show, :edit, :update , :destroy]
  #before_action :find_first_page , only: [:home , :concept, :food, :space, :rent, :activity]
  #before_filter :authenticate_user! , only: [:new , :create ,:edit , :update , :destroy]



  def home  
    @home = Home.first  
  end

  def concept
    @concept = Concept.first
  end

  def food
    @food = Food.first
  end

  def space
    @space = Space.first
  end

  def rent  
    @rent = Rent.first
  end

  def calendar
  end

  def activity
    @activity = Activity.first
  end

  def location
  end


  #private
  #def find_first_page
  #  @page = Page.first
  #end
#
  #def set_page
  #  @page = Page.find(params[:id])
  #end
#
  #def page_params
  #  params.require(:page).permit(:home_slideshow_img1 , :home_slideshow_img2 , :home_slideshow_img3 , :home_slideshow_img4 , :home_slideshow_img5 , :home_slideshow_img6 , :home_slideshow_img7 , :home_slideshow_img8 , :home_slideshow_img9 , :home_slideshow_img10 , :concept_img1 , :concept_img2 , :concept_img3 , :concept_img4 , :concept_img5 , :rent_slideshow_img1 , :rent_slideshow_img2 , :rent_slideshow_img3 , :activity_img1 , :activity_img2 , :activity_img3 , :activity_img4 , :activity_img5 , :food_img1 , :food_img2 , :food_img3)
  #end

end
