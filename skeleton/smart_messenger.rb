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
      
      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.low_noise()),
        act(AppContextModelDeclaration.instance.high_noise())
      )

      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.free()),
        act(AppContextModelDeclaration.instance.work())
      )

      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.work()),
        act(AppContextModelDeclaration.instance.school())
      )
    end

  end

end