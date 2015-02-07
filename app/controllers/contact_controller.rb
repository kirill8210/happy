class ContactController < ApplicationController
  def new
    @message = Message.new
    reset_session
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      Notifier.new_message(@message).deliver
      flash[:notice] = "Спасибо, Ваше сообщение было отправленно."
      redirect_to root_path
    else
      flash.now.alert = "Пожалуйста заполните требуемые поля..."
      render action: :new
    end
  end
end
