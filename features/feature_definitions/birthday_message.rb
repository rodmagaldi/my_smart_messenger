module BirthdayMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :SpecialMessageModel
  
      set_prologue :activate_birthday_message
  
      def activate_birthday_message()
        puts('BIRTHDAY MESSAGE ACTIVE')
      end
  
    end
  
  end