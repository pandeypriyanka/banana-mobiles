class UserMailer < ActionMailer::Base
  default from: "bananainformatics@gmail.com"

  def send_new_user_registration(user)
    @user = user
    mail(:to => user.email, :subject => "Thanks for registering on banana mobiles!!!")
  end
end