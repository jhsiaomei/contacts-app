class ContactsController < ApplicationController
  def index
    @title = "Address Book"
    if user_signed_in?
      @contact = Contact.where("user_id = ?", current_user.id)
    else
      @contact = Contact.where("user_id = ?", nil)
      @message = "Please sign in to view Contacts!"
    end
  end

  def new
    @title = "Add New Contact"
  end

  def create
    @title = "Add Contact Confirmation"
    @contact = Contact.create(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        phone: params[:phone],
        user_id: current_user.id
      )
    flash[:success] = "Contact was successfully created!"
    redirect_to '/contacts'
  end

  def show
    @contact = Contact.find_by(id: params[:id])

  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        phone: params[:phone]
      )
    flash[:success] = "Contact was successfully updated!"
    redirect_to '/contacts'
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
    flash[:danger] = "Contact was successfully deleted!"
    redirect_to '/contacts'
  end
end
