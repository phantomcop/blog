class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'notifier_mailer'
end
