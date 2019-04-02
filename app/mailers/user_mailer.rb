class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @contacts = {
      email: "ife@gmail.com",
      name: "Ife Odugbesan",
      message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    }
    mail(to: 'ifeodugbesan@yahoo.com', from: "#{@contacts[:email]}", subject: "Email from #{@contacts[:email]}: #{@contacts[:name]}")
  end

  def send_email_to_contact(contacts)
    @contacts = contacts
    mail(to: 'ifeodugbesan@yahoo.com', from: "#{@contacts[:email]}", subject: "Email from #{@contacts[:email]}: #{@contacts[:name]}")
  end
end
