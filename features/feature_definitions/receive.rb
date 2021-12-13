#
# Feature to receive a message
#
# Author: Benoît Duhoux
# Date: 2021
#

module Receive

  behaviour_adaptation()

  module Behaviour

    can_adapt :MessengerService

    def listen
      # Code to listen messages from the server
    end

    def receive_message(message)
      puts("''#{message.from}'' sends you: ''#{message.text}''")
    end

  end

end