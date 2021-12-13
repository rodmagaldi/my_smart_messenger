#
# Feature to add a default behaviour to the class Message
#
# Author: Benoît Duhoux
# Date: 2021
#
module Message

  behaviour_adaptation()

  module Model

    can_adapt :MessageModel

    attr_accessor :from, :to

    def initialize()
      @from = nil
      @to = nil
    end

    def to_json()
      return _get_data().to_json()
    end

    def _get_data()
      return {
        'from' => @from,
        'to' => [@to]
      }
    end

  end

end