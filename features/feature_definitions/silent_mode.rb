module SilentMode

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :NotificationModel
  
      set_prologue :activate_silent_mode
      set_epilogue :deactivate_silent_mode
  
      def activate_silent_mode()
        puts('ACTIVATE silent mode')
      end
      def deactivate_silent_mode()
        puts('DEACTIVATE silent mode')
      end
  
    end
  
  end