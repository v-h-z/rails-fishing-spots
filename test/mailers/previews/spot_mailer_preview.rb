# Preview all emails at http://localhost:3000/rails/mailers/spot_mailer
class SpotMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/spot_mailer/create_confirmation
  def create_confirmation
    SpotMailer.create_confirmation
  end

end
