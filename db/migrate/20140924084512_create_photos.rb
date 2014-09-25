class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :home, index: true
      t.references :concept, index: true
      t.references :food, index: true
      t.references :rent, index: true
      t.references :space, index: true
      t.references :activity, index:true
      t.references :location, index: :true

      t.timestamps
    end
  end
end
