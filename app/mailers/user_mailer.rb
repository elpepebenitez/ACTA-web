class UserMailer < ApplicationMailer
  # skip_before_action :authenticate_user!, only: [:contact, :contact_notification]
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact.subject
  #
  def contact(contact)
    email = contact.email
    @contact = contact

    mail(to: email, subject: "ACTA Panama - ¡Gracias por contactarnos!")
  end

  def contact_notification(contact)
    jd = ["pepebenitez12@gmail.com", "jbarria@pentagramaed.com", "amirarada@icloud.com", "andfleiro@gmail.com", "deobaldia.m@pg.com"]
    @contact = contact

    mail(to: jd, subject: "New Contact")
  end
end
