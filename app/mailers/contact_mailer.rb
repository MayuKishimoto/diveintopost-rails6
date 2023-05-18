class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: @contact.user.email, subject: "チーム権限移動のお知らせ"
  end
end
