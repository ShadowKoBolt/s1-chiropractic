class ContactsController < ApplicationController
  include NavigationHelper

  def create
    @page = contact_page
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = t(".success")
      @contact = Contact.new
    end
    render template: "pages/contact_page"
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :telephone, :message)
  end
end
