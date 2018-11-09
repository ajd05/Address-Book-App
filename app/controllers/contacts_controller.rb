class ContactsController < ApplicationController

  def create
    @user = User.find(session[:user_id])
    @contact = @user.contacts.new(contact_params)
    redirect_to contacts_home_url
  end
  
  private
    def contact_params
      params.require(:name).permit(:name, :email, :phone, :address, :note)
    end
end
