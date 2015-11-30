require "action_mailer"

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 465,
  #:port => 587,
  :domain => "@gmail.com",
  :user_name => "tastestos2015",
  :password => "",
  :authentication => "login",
  :ssl => true,
  :tls => true,
  #:authentication => 'plain',
  :enable_starttls_auto => true
}

class ConfirmationMailer < ActionMailer::Base
  #default from: "from@example.com"
  def confirm_email(target_email, activation_token)
    @activation_token = activation_token
      mail(:to => target_email,
      :from => "tastestos2015@gmail.com",
      :subject => "[Training - Rails 4]") do |format|
      format.html { render 'confirm_email'}
    end
  end
end
