class ChangePhotos < ActiveRecord::Migration
  def change
    change_table :photos do |t|
      t.remove :home_id, :concept_id, :food_id, :space_id, :rent_id, :location_id, :activity_id
      t.integer :imageable_id
      t.string :imageable_type 
    end 
  end
end
