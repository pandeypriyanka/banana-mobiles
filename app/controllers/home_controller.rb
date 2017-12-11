class HomeController < ApplicationController
  def index
  end

  def new
  end

  def create
   	@user =  User.new(name:params[:user][:name], email:params[:user][:email], password: 'password', password_confirmation: 'password')
  	address = params[:user][:user_address]
  	@user.user_addresses.new(address_line1: address[:address_line1], address_line2: address[:address_line2], phone:address[:phone] , city:address[:city], state:address[:state], postal_code:address[:postal_code] )
  	if @user.save
      UserMailer.send_new_user_registration(@user).deliver_now
      @message = "Thankyou #{@user.name}, for registering with us."
    else
      @message = "Something went wrong, please try again later"
    end
  end

end
