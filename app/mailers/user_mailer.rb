class UserMailer < MandrillMailer::TemplateMailer
  default :from => "info@grouporn.cl"
  def send_request_response()
    mandrill_mail template: 'cuporn-register-theme-1',
                  subject: "Grouporn - Support",
                  to: {email: 'rekiem.cs@gmail.com', name: "Cuporn Support"},
                  vars: {
                      'USER_IDENTIFIER' => 'rekiem.cs@gmail.com',
                      'COMPANY' => 'Cuporn',
                      'CURRENT_YEAR' => Time.now.year,
                      'UNIQUE_URL'=> 'www.pivoter.cl',
                      'NUMBER_LINE'=> '10',
                  },
                  important: true,
                  inline_css: true,
                  async: true
  end

  def enviar_invitacion(user, url)
    @user = user
    @url = url
    mail(:to => user.email,:from=> "info@grouporn.cl", :subject => t("email_confirmation"))
  end
end