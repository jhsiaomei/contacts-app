class ContactsController < ApplicationController
  def home
    @title = "Home"
  end

  def display_all_contacts
    @title = "Address Book"
    @contact = Contact.all
  end

  def add_contact_form
    @title = "Add New Contact"
  end

  def add_contact_confirmation
    @title = "Add Contact Confirmation"
    @contact = Contact.create(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        phone: params[:phone]
      )
  end
end
