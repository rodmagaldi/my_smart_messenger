#
# Feature to store a message
#
# Author: Benoît Duhoux
# Date: 2021
#

module StoreMessage

  behaviour_adaptation()

  module Behaviour

    can_adapt :MessengerService

    def send_message(message)
      @stored_messages << message
      puts("''#{message}'' is stored and will be sent when a connection is established.")
    end

  end

end