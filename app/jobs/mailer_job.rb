class MailerJob < ApplicationJob
  queue_as :default

  def perform(user)

    UserMailer.with(user: user).welcome_mail.deliver_now

  end
end
