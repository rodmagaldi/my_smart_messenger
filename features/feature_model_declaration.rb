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

		@root_feature.relation :Mandatory, [@account, @notification, @conversation]
	end

	private

	def _define_account_features()
		abstract_feature :@account, 'Account'
		abstract_feature :@settings, 'Settings'
		@account.relation :Mandatory, [@settings]

		abstract_feature :@screen, 'Screen'
		@settings.relation :Optional, [@screen]

		feature :@dark_mode, 'Dark mode'
		feature :@normal_mode, 'Normal mode'
		@screen.relation :Alternative, [@dark_mode, @normal_mode]
	end

	def _define_notification_features()
		abstract_feature :@notification, 'Notification'
		feature :@silent_mode, 'Silent mode'
		feature :@vibrating_mode, 'Vibrating mode'
		feature :@sound_mode, 'Sound mode'

		@notification.relation :Alternative, [@silent_mode, @vibrating_mode, @sound_mode]
	end

	def _define_conversation_features()
		abstract_feature :@conversation, 'Conversation'
		feature :@send_message, 'Send message'
		@conversation.relation :Mandatory, [@send_message]

		feature :@special_message, 'Special message'
		@send_message.relation :Optional, [@special_message]

		feature :@birthday_message, 'Birthday message'
		feature :@nearby_friend_message, 'Nearby friend message'
		feature :@low_battery_message, 'Low battery message'
		feature :@busy_message, 'Busy message'
		@special_message.relation :Alternative, [@birthday_message, @nearby_friend_message, @low_battery_message, @busy_message]
	end

end