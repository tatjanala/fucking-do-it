class Idea < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  after_create :deliver_email

  def self.fucking_messages
    {
      "1" => "Fucking do it!",
      "2" => "Fucking do it right now!",
      "3" => "If you don't fucking do it right now - you're fucked!"
    }
  end

  def fuck_message
    self.class.fucking_messages[priority]
  end

  def deliver_email
    Notifications.idea_created(self).deliver
  end
end
