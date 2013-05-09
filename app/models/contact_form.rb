class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :subject,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :message

  def headers
    {
      :subject => "Support Request",
      :to => "tataihono.nikora@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
