class HomepageHeroImage < ActiveRecord::Base
  belongs_to :homepage

  attachment :image, type: :image
end
