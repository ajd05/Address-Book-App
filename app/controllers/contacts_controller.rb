class ContactsController < ApplicationController
  def index
    @user = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(contact_params)
    
    if @user.save
      redirect_to @user
    else 
      render 'new'
    end
  end
  
  def show
        @user = User.find(params[:id])
  end
  
  def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to contacts_home_url
  end
    
  def edit
      @user = User.find(params[:id])
  end
  
  def update
      @user = User.find(params[:id])
      if @user.update(contact_params)
          redirect_to @user
      else
          render 'edit'
      end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :address, :note)
    end
end
