module GreetingsHelper
  def greetings
    if user_signed_in?
      "Hello, dear #{current_user.first_name}, what a beautiful day! Shall you proceed with the visit of our humble website?"
    else
      "Hello, dear stranger, would you want to sign-in and thus enjoy the premisses?"
    end
  end
end
