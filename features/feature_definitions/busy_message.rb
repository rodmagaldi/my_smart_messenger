module BusyMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :ConversationModel
  
      set_prologue :activate_busy_message
      set_epilogue :deactivate_busy_message
  
      def activate_busy_message()
        puts('ACTIVATE busy message')

        @suggested_messages.append(self.busy_message())
      end
      def deactivate_busy_message()
        puts('DEACTIVATE busy message')

        @suggested_messages.delete(self.busy_message())
      end

      def busy_message()
        'Im busy! Ill text you back.'
      end
  
    end
  
  end