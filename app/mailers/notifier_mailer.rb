class NotifierMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.email_friend.subject
  #
  def email_friend(article, sender_name, receiver_email)
    @article = @article
    @sender_name = sender_name

    attachments["rails.png"] = File.read(Rails.root.join("public/apple-touch-icon-precomposed.png"))
    mail to: receiver_email, subject: 'Testing.........'
  end

  # Set notify when article has comment
  def comment_added(comment)
    @article = comment.article
    mail to: @article.user.email, subject: "New comment for'#{@article.title}'"
  end
end
