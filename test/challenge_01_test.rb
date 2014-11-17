require "minitest"
require "minitest/autorun"
require "minitest/spec"
require_relative "../lib/challenge_01"

describe LowerCaseEmailGenerator do
  #get an array of email addresses (probably they are strings)
  #convert them all to lowercase
  #
  it "takes some emails" do
    emails = ["horace@turing.io", "JEFF@jeffisawesome.com", "StEvE@pizZa.com"]
    generator = LowerCaseEmailGenerator.new(emails)
    assert_equal emails, generator.emails
  end

  it "downcases emails" do
    emails = ["HorAce@tUring.IO", "JEFF@jeffisawesome.com", "StEvE@pizZa.com"]
    generator = LowerCaseEmailGenerator.new(emails)
    lowered = ["horace@turing.io", "jeff@jeffisawesome.com", "steve@pizza.com"]
    assert_equal lowered, generator.downcase_emails
  end
end
