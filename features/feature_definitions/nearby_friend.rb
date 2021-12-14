module NearbyFriendMessage

    behaviour_adaptation()
  
    module Behaviour
  
      can_adapt :ConversationModel
  
      set_prologue :activate_nearby_friend_message
      set_epilogue :deactivate_nearby_friend_message
  
      def activate_nearby_friend_message()
        puts('ACTIVATE nearby friend message')

        @suggested_messages.append(self.nearby_friend_message())
      end
      def deactivate_nearby_friend_message()
        puts('DEACTIVATE nearby friend message')

        @suggested_messages.delete(self.nearby_friend_message())
      end

      def nearby_friend_message()
        'Hey! We are very close to each other. Wanna meet up?'
      end
  
    end
  
  end