module LowBatteryMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :ConversationModel
  
      set_prologue :activate_low_battery_message
      set_epilogue :deactivate_low_battery_message
  
      def activate_low_battery_message()
        puts('ACTIVATE low battery message')

        @suggested_messages.append(self.low_battery_message())
      end
      def deactivate_low_battery_message()
        puts('DEACTIVATE low battery message')

        @suggested_messages.delete(self.low_battery_message())
      end

      def low_battery_message()
        'My battery is running low! I might be out of reach for a while.'
      end
  
    end
  
  end