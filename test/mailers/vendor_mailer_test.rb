require 'test_helper'

class VendorMailerTest < ActionMailer::TestCase
  test "new_email" do
    mail = VendorMailer.new_email
    assert_equal "New email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
