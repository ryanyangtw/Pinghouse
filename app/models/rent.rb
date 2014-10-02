class Rent < ActiveRecord::Base
  has_many :photos, :as=>:imageable
  accepts_nested_attributes_for :photos, :reject_if => :all_blank, allow_destroy: true
end
