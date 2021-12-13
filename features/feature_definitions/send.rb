#
# Feature to add a default behaviour to the class MessengerService
#
# Author: Benoît Duhoux
# Date: 2021
#
module Send

  behaviour_adaptation()

  module Behaviour

    can_adapt :MessengerService

    def initialize()
      self.init_stored_messages()
    end

    def init_stored_messages()
      @stored_messages = []
    end

  end

end