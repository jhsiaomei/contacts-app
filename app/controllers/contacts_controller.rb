class ContactsController < ApplicationController
  def index
    @title = "Address Book"
    @contact = Contact.all
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
        phone: params[:phone]
      )

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

    redirect_to '/contacts'
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
  end
end
