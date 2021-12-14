module BirthdayMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :SpecialMessageModel
  
      set_prologue :activate_birthday_message
      set_epilogue :deactivate_birthday_message
  
      def activate_birthday_message()
        puts('ACTIVATE birthday message')
      end
      def deactivate_birthday_message()
        puts('DEACTIVATE birthday message')
      end
  
    end
  
  end