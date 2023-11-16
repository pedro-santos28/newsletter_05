class NewsletterMailer < ApplicationMailer
  helper :application

  def email(subscriber, email)
    @subscriber = subscriber
    @email = email

    mail to: @subscriber.email, subject: @email.subject
  end
end
