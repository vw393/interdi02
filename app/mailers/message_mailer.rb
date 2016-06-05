class MessageMailer < ApplicationMailer

  default from: "Website <noreply@interdi.it>"
  default to: "lpizzinato@gmail.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end
