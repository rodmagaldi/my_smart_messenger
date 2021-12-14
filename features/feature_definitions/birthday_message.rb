module BirthdayMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :ConversationModel

      set_prologue :activate_birthday_message
      set_epilogue :deactivate_birthday_message
  
      def activate_birthday_message()
        puts('ACTIVATE birthday message')

        @suggested_messages.append(self.birthday_message())
      end
      def deactivate_birthday_message()
        puts('DEACTIVATE birthday message')

        @suggested_messages.delete(self.birthday_message())
      end

      def birthday_message()
        'Happy birthday!'
      end
  
    end
  
  end