module SoundMode

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :NotificationModel
  
      set_prologue :activate_sound_mode
      set_epilogue :deactivate_sound_mode
  
      def activate_sound_mode()
        puts('ACTIVATE sound mode')
      end
      def deactivate_sound_mode()
        puts('DEACTIVATE sound mode')
      end
  
    end
  
  end