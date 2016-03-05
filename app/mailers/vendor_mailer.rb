class VendorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.vendor_mailer.new_email.subject
  #
  def new_email
    @greeting = "Hi"

    mail to: "shar3dspac3@gmail.com",
    	subject: "Request quotation test"
  end
end
