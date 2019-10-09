class Admin::ItemsController < ApplicationController

  def index
     items = Item.all
     user = current_user
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def search
  end
end
