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
      respond_to do |format|
        format.html { redirect_to emails_path }
        format.js
    else
      flash["danger"] = "Your email has not been created"
      end
    end
  end

  def destroy
    @email = Email.destroy(params[:id])
    respond_to do |f|
      f.html { redirect_to emails_path }
      f.js
    end
  end

  private

  def email_params
    params.require(:email).permit(:object, :body)
  end
end
