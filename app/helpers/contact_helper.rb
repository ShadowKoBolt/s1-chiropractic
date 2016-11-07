module ContactHelper
  def contact
    @contact ||= Contact.new
  end
end
