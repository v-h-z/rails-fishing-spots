class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    # @greeting = "Hi"

    # mail to: "to@example.org"
    @user = params[:user]
    @greeting = "Hello dear #{@user.email}"
    mail(to: @user.email, subject: 'Welcome to Fishing Spots!')
  end
end
