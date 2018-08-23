class EmailsController < ApplicationController
  def index
    @email = Email.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
