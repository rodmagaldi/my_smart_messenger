module SendMessage

    behaviour_adaptation()
  
    module Model
  
      can_adapt :MessageModel
  
      attr_accessor :from, :text
  
      def initialize()
        @from = nil
        @text = nil
      end

      def send_message(conversation)
        conversation.messages.append(self)
      end
    
    end
  
  end