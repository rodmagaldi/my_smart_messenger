module SoundMode

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :NotificationModel
  
      set_prologue :activate_sound_mode
  
      def activate_sound_mode()
        puts('SOUND MODE ACTIVE')
      end
  
    end
  
  end