require 'singleton'

require_relative '../../../src/module'
require_relative '../../../src/object'
require_relative '../../../src/application_domain/abstract_feature'
require_relative '../../../src/application_domain/feature'
require_relative '../../../src/application_domain/feature_model_declaration'
Dir[File.dirname(__FILE__) + "/feature_definitions/*.rb"].each { |file| require file }

#
# Class declaring the feature model of the app
#
# Author: Benoît Duhoux
# Date: 2021
#
class AppFeatureModelDeclaration < FeatureModelDeclaration

	include Singleton

	def initialize()
		super()

		_define_account_features()
		_define_notification_features()
		_define_conversation_features()

		@root_feature.relation :Mandatory, [@notification, @account, @conversation]
	end

	private

	def _define_account_features()
		abstract_feature :@account, 'Account'
		abstract_feature :@settings, 'Settings'
		@account.relation :Mandatory, [@settings]

		abstract_feature :@screen, 'Screen'
		@settings.relation :Optional, [@screen]

		feature :@dark_mode, 'DarkMode', [:ScreenModel]
		feature :@normal_mode, 'NormalMode', [:ScreenModel]
		@screen.relation :Alternative, [@dark_mode, @normal_mode]
	end

	def _define_notification_features()
		abstract_feature :@notification, 'Notification'
		feature :@silent_mode, 'SilentMode', [:NotificationModel]
		feature :@vibrating_mode, 'VibratingMode', [:NotificationModel]
		feature :@sound_mode, 'SoundMode', [:NotificationModel]

		@notification.relation :Alternative, [@silent_mode, @vibrating_mode, @sound_mode]
	end

	def _define_conversation_features()
		feature :@conversation, 'Conversation', [:ConversationModel]
		feature :@send_message, 'SendMessage', [:MessageModel]
		@conversation.relation :Mandatory, [@send_message]

		abstract_feature :@special_message, 'SpecialMessage'
		@send_message.relation :Optional, [@special_message]

		feature :@birthday_message, 'BirthdayMessage', [:ConversationModel]
		feature :@nearby_friend_message, 'NearbyFriendMessage', [:ConversationModel]
		feature :@low_battery_message, 'LowBatteryMessage', [:ConversationModel]
		feature :@busy_message, 'BusyMessage', [:ConversationModel]
		@special_message.relation :Optional, [@birthday_message, @nearby_friend_message, @low_battery_message, @busy_message]
	end

end