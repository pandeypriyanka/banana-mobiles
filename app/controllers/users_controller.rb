class UsersController < ApplicationController

  def validate
    @user = User.where(email:params[:email]).first
	respond_to do |format|
	  format.json {render :json => {email_exists: @user.present?}}
	end  	
  end

end
