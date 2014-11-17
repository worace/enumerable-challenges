class LowerCaseEmailGenerator
  attr_reader :emails
  def initialize(emails)
    @emails = emails
  end

  def downcase_emails
    emails.map do |email|
      email.downcase
    end
  end
end
