class ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      redirect_to @contact
    else 
      render 'new'
    end
  end
  
  def show
        @contact = Contact.find(params[:id])
  end
  
  def destroy
      @contact = Contact.find(params[:id])
      @contact.destroy
      redirect_to contacts_home_url
  end
    
  def edit
      @contact = Contact.find(params[:id])
  end
  
  def update
      @contact = Contact.find(params[:id])
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
