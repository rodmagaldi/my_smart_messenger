#
# Feature to send a message
#
# Author: Benoît Duhoux
# Date: 2021
#
module SendMessage

  behaviour_adaptation()

  module Behaviour

    can_adapt :MessengerService

    set_prologue :init_connection, :send_stored_messages

    def init_connection()
      # Connection to the server to send messages
      puts('The connection with the server is set up.')
    end

    def send_message(message)
      puts("''#{message.from()}'' sends \"#{message.text()}\" to #{message.to()}")
    end

    def send_stored_messages()
      @stored_messages.each do
        |message|
        send_message(message)
      end
      init_stored_messages()
      puts('The stored messages are sent')
    end

  end

end