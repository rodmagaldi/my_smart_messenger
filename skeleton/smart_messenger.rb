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
      greeting_message = MessageModel.new()
      greeting_message.from = 'Benoît'
      greeting_message.to = 'Kim'
      greeting_message.text = 'Ping me when you are available'
      MessengerService.instance.send_message(greeting_message)

      begin
         MessengerService.instance.receive_message(greeting_message)
      rescue NoMethodError
      end

      ContextActivation.instance.alter(
        deact(AppContextModelDeclaration.instance.no_connection()),
        act(AppContextModelDeclaration.instance.wifi())
      )

      kim_message = MessageModel.new()
      kim_message.from = 'Kim'
      kim_message.to = 'Benoît'
      kim_message.text = 'Pong'
      MessengerService.instance.send_message(kim_message)

      MessengerService.instance.receive_message(kim_message)

      benoit_message = MessageModel.new()
      benoit_message.from = 'Benoît'
      benoit_message.to = 'Kim'
      benoit_message.picture = 'Picture 1'
      MessengerService.instance.send_message(benoit_message)
    end

  end

end