module ApplicationHelper
  def testimonials
    @testimonials ||= Testimonial.where(show_on_home: true).reorder("RANDOM()")
  end
end
