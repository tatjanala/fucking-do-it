require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "ideas" do
    mail = Notifications.ideas
    assert_equal "Ideas", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "created" do
    mail = Notifications.created
    assert_equal "Created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
