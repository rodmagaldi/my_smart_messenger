module VibratingMode

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :NotificationModel
  
      set_prologue :activate_vibrating_mode
  
      def activate_vibrating_mode()
        puts('VIBRATING MODE ACTIVE')
      end
  
    end
  
  end