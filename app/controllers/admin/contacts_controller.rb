class Admin::ContactsController < ApplicationController
  def index
  	  @contacts = Contact.page(params[:page]).reverse_order
  end

  def show
  	  @contact = Contact.find(params[:id])
  end
end
