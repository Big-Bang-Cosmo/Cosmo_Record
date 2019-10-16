class User::ContactsController < ApplicationController
  def new
  	  @contact = Contact.new
  end
  def create
  	  contact = Contact.new(contact_params)
  	  contact.save
  	  redirect_to ''
  end
  private
  def contact_params
  	  params.require(:contact).permit(:last_name, :first_name, :last_name_ruby,
  	  	             :first_name_ruby, :phone_number, :email, :contact_body)
end
