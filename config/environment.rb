# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smt_settings = {
    :port               => ENV['MAILGUN_SMTP_PORT'],
    :address            => ENV['MAILGUN_SMTP_SERVER'],
    :user_name          => ENV['MAILGUN_SMTP_LOGIN'],
    :password           => ENV['MAILGUN_SMTP_PASSWORD'],
    :domain             => 'frozen-forest-67953.herokuapp.com',
    :authentication     => :plain,
}
ActionMailer:Base.deliver_method = :smtp