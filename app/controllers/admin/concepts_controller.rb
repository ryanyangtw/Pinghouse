class Admin::ConceptsController < AdminController

  before_action :find_concept

  def edit  
  end

  def update
    if @concept.update(concept_params)
      redirect_to :back
    else
      render :edit
    end
  end


  private

  def find_concept
    @concept = Concept.first
  end

  def concept_params
    params.require(:concept).permit(:photos_attributes => [:id, :image, :_destroy])
  end
end
