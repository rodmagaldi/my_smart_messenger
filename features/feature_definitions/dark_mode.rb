module DarkMode

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :ScreenModel
  
      set_prologue :activate_dark_mode
  
      def activate_dark_mode()
        puts('DARK SCREEN MODE ACTIVE')
      end
  
    end
  
  end