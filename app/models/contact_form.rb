class ContactForm < MailForm::Base

  TYPES = %w{new remake interiorism electrodomestic other}

  attribute :name

  attribute :address
  attribute :phone
  attribute :email

  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :type
  attribute :message

  validates :name, :phone, :message, :address, :type, presence: true

  def types
    TYPES.map{|t| I18n.t(t, scope: 'contact_form.types')}
  end

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Formulari de contacte: #{name}",
      :to => ENV['CONTACT_FORM_RECEIVER'],
      :from => %("#{name}" <#{email}>)
    }
  end
end
