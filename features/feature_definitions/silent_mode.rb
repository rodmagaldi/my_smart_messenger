module SilentMode

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :NotificationModel
  
      set_prologue :activate_silent_mode
  
      def activate_silent_mode()
        puts('SILENT MODE ACTIVE')
      end
  
    end
  
  end