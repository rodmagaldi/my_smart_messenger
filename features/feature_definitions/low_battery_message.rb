module LowBatteryMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :SpecialMessageModel
  
      set_prologue :activate_low_battery_message
      set_epilogue :deactivate_low_battery_message
  
      def activate_low_battery_message()
        puts('ACTIVATE low battery message')
      end
      def deactivate_low_battery_message()
        puts('DEACTIVATE low battery message')
      end
  
    end
  
  end