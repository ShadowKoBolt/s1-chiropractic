module ApplicationHelper
  def testimonials
    @testimonials ||= Testimonial.where(show_on_home: true)
  end
end
