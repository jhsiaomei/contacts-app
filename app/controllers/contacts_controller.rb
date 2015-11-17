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
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
