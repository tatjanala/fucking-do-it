class Notifications < ActionMailer::Base
  default from: "doit@railslove.com"

  def idea_created(idea)
    @idea = idea.reload
    #attachments["#{idea[:picture]}"] = File.read("#{idea.picture.url}")
    mail to: @idea.email, subject: @idea.fuck_message
  end

  def notify_cleaning_guy(email)
  	mail to: email, subject: "clean the fucking office today"
  end
end
