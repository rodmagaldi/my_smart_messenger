#
# Feature to add a picture to the class Message
#
# Author: Benoît Duhoux
# Date: 2021
#
module Picture

  behaviour_adaptation()

  module Model

    can_adapt :MessageModel

    attr_accessor :picture

    def initialize()
      proceed()
      @picture = nil
    end

    def _get_data()
      data = proceed()
      unless @picture.nil?()
        filepath = 'pictures/Ruby_logo.png'
        data['picture'] = "File.binread(filepath).unpack('b*')"
      end
      return data
    end

  end

end