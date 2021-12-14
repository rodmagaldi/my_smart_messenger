module NormalMode

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :ScreenModel
  
      set_prologue :activate_normal_mode
      set_epilogue :deactivate_normal_mode
  
      def activate_normal_mode()
        puts('ACTIVATE normal mode')
      end
      def deactivate_normal_mode()
        puts('DEACTIVATE normal mode')
      end
  
    end
  
  end