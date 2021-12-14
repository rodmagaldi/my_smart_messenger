module VibratingMode

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :NotificationModel
  
      set_prologue :activate_vibrating_mode
      set_epilogue :deactivate_vibrating_mode
  
      def activate_vibrating_mode()
        puts('ACTIVATE vibrating mode')
      end
      def deactivate_vibrating_mode()
        puts('DEACTIVATE vibrating mode')
      end
  
    end
  
  end