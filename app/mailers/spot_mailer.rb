class SpotMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.spot_mailer.create_confirmation.subject
  #
  def create_confirmation
    @spot = params[:spot]

    mail(
      to:       @spot.user.email,
      subject:  "Spot #{@spot.name} created!"
    )
  end
end
