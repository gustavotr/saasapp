class ContactMailer < ActionMailer::Base
    default to: 'gustavotrudiger@gmail.com'
    
    def conctact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: 'Contact Form Message')
    end
end