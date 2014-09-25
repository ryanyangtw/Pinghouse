class PagesController < ApplicationController
  

  #before_action :set_page , only: [:show, :edit, :update , :destroy]
  #before_action :find_first_page , only: [:home , :concept, :food, :space, :rent, :activity]
  #before_filter :authenticate_user! , only: [:new , :create ,:edit , :update , :destroy]



  def home  
    set_page_title("怡木庫房")
    set_page_description("怡木庫房 怡木庫房提供您空間、餐飲、傢俱傢飾的服務。")

    @home = Home.first  
  end

  def concept
    set_page_title("怡木庫房-概念")
    set_page_description("怡木庫房-概念 怡木庫房提供您空間、餐飲、傢俱傢飾的服務。")
    @concept = Concept.first
  end

  def food
    set_page_title("怡木庫房-餐飲")
    set_page_description("怡木庫房-餐飲 怡木庫房提供您空間、餐飲、傢俱傢飾的服務。")
    @food = Food.first
  end

  def space
    set_page_title("怡木庫房-空間")
    set_page_description("怡木庫房-空間 怡木庫房提供您空間、餐飲、傢俱傢飾的服務。")
    @space = Space.first
  end

  def rent  
    set_page_title("怡木庫房-場租")
    set_page_description("怡木庫房-場租 怡木庫房提供您空間、餐飲、傢俱傢飾的服務。")
    @rent = Rent.first
  end

  def calendar
    set_page_title("怡木庫房-行事曆")
    set_page_description("怡木庫房-行事曆 怡木庫房提供您空間、餐飲、傢俱傢飾的服務。")
  end

  def activity
    set_page_title("怡木庫房-活動")
    set_page_description("怡木庫房-活動 怡木庫房提供您空間、餐飲、傢俱傢飾的服務。")
    @activity = Activity.first
  end

  def location
    set_page_title("怡木庫房-位置")
    set_page_description("怡木庫房-位置 怡木庫房提供您空間、餐飲、傢俱傢飾的服務。")
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
