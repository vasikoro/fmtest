class MessagesController < ApplicationController
  def index
    @conversations = Message.for_user(current_user).order(:created_at).
      eager_load(:sender, :recipient).
      group_by { |message| [message.sender, message.recipient].sort }
  end

  def new
    @message = Message.new()
  end

  def create
    Message.create(message_params.merge(sender_id: current_user.id))
  end

  private

    def message_params
      params.require(:message).permit(:body, :recipient_id)
    end
end
