module Conversation

    behaviour_adaptation()
  
    module Model
  
      can_adapt :ConversationModel
  
      attr_accessor :participants, :messages, :suggested_messages
  
      def initialize()
        @participants = []
        @messages = []

        @suggested_messages = []
      end
  
    end
  
  end