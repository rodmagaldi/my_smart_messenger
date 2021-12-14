module BusyMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :SpecialMessageModel
  
      set_prologue :activate_busy_message
      set_epilogue :deactivate_busy_message
  
      def activate_busy_message()
        puts('ACTIVATE busy message')
      end
      def deactivate_busy_message()
        puts('DEACTIVATE busy message')
      end
  
    end
  
  end