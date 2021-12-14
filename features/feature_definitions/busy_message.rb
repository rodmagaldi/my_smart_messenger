module BusyMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :SpecialMessageModel
  
      set_prologue :activate_busy_message
  
      def activate_busy_message()
        puts('BUSY MESSAGE ACTIVE')
      end
  
    end
  
  end