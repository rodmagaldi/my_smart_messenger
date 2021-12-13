#
# Feature to add a text to the class Message
#
# Author: Benoît Duhoux
# Date: 2021
#
module Text

  behaviour_adaptation()

  module Model

    can_adapt :MessageModel

    attr_accessor :text

    def initialize()
      proceed()
      @text = nil
    end

    def _get_data()
      data = proceed()
      unless @text.nil?()
        data['text'] = @text
      end
      return data
    end

  end

end