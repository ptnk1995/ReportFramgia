class UserMailer < ApplicationMailer
  def notify_create_store_email(user)
    @user = user
    subject = "notify_create_store_subject"
    mail(to: 'tiensaruby@gmail.com', subject: subject)
  end
end
