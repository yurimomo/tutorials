class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end
  def password_reset
    # ArgumentError: wrong number of arguments (given 1, expected 0)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
