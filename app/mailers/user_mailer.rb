class UserMailer < ApplicationMailer

  def order_email(user)
    @user = user
    mail(to: @user.email, subject: 'Your Jungle Receipt')
  end
end
