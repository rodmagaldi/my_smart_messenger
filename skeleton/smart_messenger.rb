#
# Main class of the system
#
# Author: Benoît Duhoux
# Date: 2021
#
class SmartMessenger

  class << self

    # Need to add this statement to run the necessary code at launch time
    include CodeExecutionAtLaunchTime

    def run()
      notification = NotificationModel.new()
      screen_mode = ScreenModel.new()
      special_message = SpecialMessageModel.new()
      
      # 1. sound mode, normal screen mode
      # SCHOOL, HIGH, DAY

      puts('')
      puts('#2 deactivate busy message')
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.school()),
        act(AppContextModelDeclaration.instance.free())
      )
      
      puts('')
      puts('#3 activate nearby friend message')
      ContextActivation.instance.alter(
        act(AppContextModelDeclaration.instance.near_friend())
      )
      
      puts('')
      puts('#4 deactivate nearby friend message, activate busy message, activate silent mode')
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.free()),
        act(AppContextModelDeclaration.instance.work())
      )
      
      puts('')
      puts('#5 deactivate normal screen, activate dark screen')
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.high_noise()),
        act(AppContextModelDeclaration.instance.low_noise())
      )
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.day()),
        act(AppContextModelDeclaration.instance.night())
      )
      
      puts('')
      puts('#6 nothing changes')
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.near_friend()),
      )

      puts('')
      puts('#7 deactivate silent, deactivate busy, activate sound')
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.work()),
        act(AppContextModelDeclaration.instance.free())
      )

      puts('')
      puts('#8 activate nearby friend message')
      ContextActivation.instance.alter(
        act(AppContextModelDeclaration.instance.near_friend()),
      )

      puts('')
      puts('#9 deactivate sound, activate vibration, deactivate nearby friend, activate busy')
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.free()),
        act(AppContextModelDeclaration.instance.school())
      )

      puts('')
      puts('#10 deactivate busy message, activate friends birthday message')
      ContextActivation.instance.alter(
        act(AppContextModelDeclaration.instance.friend_birthday()),
        deact(AppContextModelDeclaration.instance.near_friend())
      )
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.low_noise()),
        act(AppContextModelDeclaration.instance.high_noise())
      )
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.school()),
        act(AppContextModelDeclaration.instance.free())
      )

      puts('')
      puts('#11 deactivate birthday message, activate low battery message')
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.friend_birthday()),
        act(AppContextModelDeclaration.instance.low_battery())
      )

      puts('')
      puts('#12 deactivate dark screen, activate normal screen, deactivate vibration, activate sound')
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.high_noise()),
        act(AppContextModelDeclaration.instance.low_noise())
      )
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.night()),
        act(AppContextModelDeclaration.instance.day())
      )

      puts('')
      puts('#13 deactivate lowbattery message, activate friends birthday message')
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.low_battery()),
        act(AppContextModelDeclaration.instance.friend_birthday())
      )

    end

  end

end