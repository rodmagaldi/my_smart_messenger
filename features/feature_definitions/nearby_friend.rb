module NearbyFriendMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :SpecialMessageModel
  
      set_prologue :activate_nearby_friend_message
  
      def activate_nearby_friend_message()
        puts('NEARBY FRIEND MESSAGE ACTIVE')
      end
  
    end
  
  end