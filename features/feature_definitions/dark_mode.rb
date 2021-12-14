module DarkMode

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :ScreenModel
  
      set_prologue :activate_dark_mode
      set_epilogue :deactivate_dark_mode
  
      def activate_dark_mode()
        puts('ACTIVATE dark mode')
      end
      def deactivate_dark_mode()
        puts('DEACTIVATE dark mode')
      end
  
    end
  
  end