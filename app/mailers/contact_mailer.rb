class ContactMailer < ActionMailer::Base
  default from: "from@example.com" "hi.ro.ya6039@gmail.com"
  
  
  
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sent.subject
  #
  def sent_to_admin(contact)
     @contact = contact
    mail(to: "hi.ro.ya6039@gmail.com", subject: "webサイトからお問い合わせがありました。")
  end
  
  def sent(contact)
    
    @contact = contact

    mail(to: @contact.email, subject: "Thank you for your contact!")
  end
end