class Skill < ApplicationRecord
  include Placeholder 
  validates_presence_of :title, :percent_utilized
  
  
  after_initialize :set_defaults
  
  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
#WHY IS IT 250 AND 250 FIX IT
#Jordan changes the size of the image from 600x400 to 250x250