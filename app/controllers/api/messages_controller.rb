class Api::MessagesController < ApplicationController
  def index
    random_message = Message.order('RANDOM()').first

    if random_message
      render json: { greeting: random_message.text }
    else
      render json: { greeting: 'No messages available' }
    end
  end
end
