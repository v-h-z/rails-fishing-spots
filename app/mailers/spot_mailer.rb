class SpotMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.spot_mailer.create_confirmation.subject
  #
  def create_confirmation
    @spot = params[:spot]
    @greeting = "Dear #{@spot.user.first_name.capitalize}"

    mail(
      to:       @spot.user.email,
      subject:  "Spot #{@spot.name} created!"
    )
  end
end
