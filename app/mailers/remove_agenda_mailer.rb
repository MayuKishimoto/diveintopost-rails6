class RemoveAgendaMailer < ApplicationMailer
  def remove_agenda_mail(remove_agenda)
    @remove_agenda = remove_agenda
    mail to: @remove_agenda.team.users.pluck(:email), subject: "お問い合わせの確認メール"
  end
end
