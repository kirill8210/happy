class Notifier < ActionMailer::Base
  default to: "kyryl.zp@gmail.com"
  default from: 'kyryl.zp@gmail.com'


  def new_message(message)
    @message = message
    mail subject: "Happy Egypt: #{message.subject}"
  end
end
