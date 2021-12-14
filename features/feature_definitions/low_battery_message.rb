module LowBatteryMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :SpecialMessageModel
  
      set_prologue :activate_low_battery_message
  
      def activate_low_battery_message()
        puts('LOW BATTERY MESSAGE ACTIVE')
      end
  
    end
  
  end