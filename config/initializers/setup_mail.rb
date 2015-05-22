ActionMailer::Base.smtp_settings = {
    :address              => "smtp.mandrillapp.com",
    :port                 => 587,
    :enable_starttls_auto => true,
    :domain               => "pivoter.cl",
    :user_name            => "app36832828@heroku.com",
    :password             => "fO5C1zIuVAzJ09Caz3BrLQ",
    :authentication       => "login",

}
ActionMailer::Base.default_url_options[:host] = "localhost:3000"

MandrillMailer.configure do |config|
  config.api_key = "fO5C1zIuVAzJ09Caz3BrLQ"
end