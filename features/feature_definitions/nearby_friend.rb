module NearbyFriendMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :SpecialMessageModel
  
      set_prologue :activate_nearby_friend_message
      set_epilogue :deactivate_nearby_friend_message
  
      def activate_nearby_friend_message()
        puts('ACTIVATE nearby friend message')
      end
      def deactivate_nearby_friend_message()
        puts('DEACTIVATE nearby friend message')
      end
  
    end
  
  end