class Testimonial < ActiveRecord::Base
  validates :author, :body, presence: true

  default_scope { order(:position) }
end
