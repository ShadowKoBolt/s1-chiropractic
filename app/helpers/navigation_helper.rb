module NavigationHelper
  def contact_page
    @contact_page ||= ContactPage.first
  end
end
