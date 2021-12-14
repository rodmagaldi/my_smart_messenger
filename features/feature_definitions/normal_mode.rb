module NormalMode

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :ScreenModel
  
      set_prologue :activate_normal_mode
  
      def activate_normal_mode()
        puts('NORMAL SCREEN MODE ACTIVE')
      end
  
    end
  
  end