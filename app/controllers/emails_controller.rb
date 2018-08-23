class EmailsController < ApplicationController
  def index
    @email_all = Email.all
  end

  def new
  end

  def show
    @email_id = Email.find(params[:id].to_i + 1)
    respond_to do |format|
      format.js
    end
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      flash["success"] = "Email created"
    end
  end

  def destroy
  end
end

private

  def email_params
    params.require(:email).permit(:object, :body)
  end
