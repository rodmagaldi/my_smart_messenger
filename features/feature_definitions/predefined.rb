#
# Feature proposing predefined messages in the class Message
#
# Author: Benoît Duhoux
# Date: 2021
#
module Predefined

  behaviour_adaptation()

  module Model

    can_adapt :MessageModel

    def list_predefined_messages()
      return [
          "Be at home in few minutes",
          "Arriving at work",
          "Driving. I call you when I'm available"
      ]
    end

  end

end