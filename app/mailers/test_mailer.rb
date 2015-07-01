class TestMailer < ApplicationMailer
  default from: 'no-reply@heroku.com'

  def example(user)
    @user = user
    mail(to: user.email,
         subject: 'God we are such badddasses!')
  end
end
