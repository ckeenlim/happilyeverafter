# Preview all emails at http://localhost:3000/rails/mailers/vendor_mailer
class VendorMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/vendor_mailer/new_email
  def new_email
    VendorMailer.new_email
  end

end
