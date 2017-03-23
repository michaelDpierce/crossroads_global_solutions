require 'test_helper'

class ModelMailerTest < ActionMailer::TestCase
  test "crossroads_global_solutions_mailer" do
    mail = ModelMailer.crossroads_global_solutions_mailer
    assert_equal "Crossroads global solutions mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
