class User::ContactsController < ApplicationController
  def new
  	  @contact = Contact.new
  end
  def create
  	  @contact = Contact.new(contact_params)
      #バリデーションをつける場合newページで得た情報（ここなら@contact = Contact.new）をcreateアクションでも定義する必要がある
  	  if @contact.save
  	    redirect_to user_contact_completed_path(current_user)
      else
        render :new
      end
  end

  def contact_completed
  end

  private
  def contact_params
  	  params.require(:contact).permit(:last_name, :first_name, :last_name_ruby,
  	  	             :first_name_ruby, :phone_number, :email, :contact_body)
  end
end
