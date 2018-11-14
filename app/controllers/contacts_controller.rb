class ContactsController < ApplicationController
  def create
    @user = User.find(session[:user_id])
    @contact = @user.contacts.create(contact_params)
    redirect_to contacts_home_url(@contact)
  end
  
  def show
        @user = User.find(session[:user_id])
        @contact = @user.contacts.find(params[:id])
  end
  
    def destroy
        @user = User.find(session[:user_id])
        @contact = @user.contacts.find(params[:id])
        @contact.destroy
        redirect_to contacts_home_url
    end
    
    def edit
        @user = User.find(session[:user_id])
        @contact = @user.contacts.find(params[:id])
    end
    def update
        @user = User.find(session[:user_id])
        @contact = @user.contacts.find(params[:id])
        if @contact.update(contact_params)
            redirect_to @contact
        else
            render 'edit'
        end
    end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :address, :note)
    end
end
