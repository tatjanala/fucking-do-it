class Notifications < ActionMailer::Base
  default from: "doit@railslove.com"

  def idea_created(idea)
    @idea = idea

    mail to: @idea.email, subject: @idea.fuck_message
  end

end
