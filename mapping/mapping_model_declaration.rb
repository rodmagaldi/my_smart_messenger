require 'singleton'

require_relative '../../../src/application_domain/mapping_model_declaration'

#
# Class declaring the mapping model of the app
#
# Author: Benoît Duhoux
# Date: 2020
#
class AppMappingModelDeclaration < MappingModelDeclaration

	include Singleton

	def initialize()
		contexts = AppContextModelDeclaration.instance
		features = AppFeatureModelDeclaration.instance
		@mapping = {
			[
				contexts.friend_birthday()
			] =>
			[
				features.birthday_message()
			],
			[
				contexts.low_battery()
			] =>
			[
				features.low_battery_message(),
			],
			[
				contexts.low_noise(),
				contexts.free()
			] =>
			[
				features.sound_mode()
			],
			[
				contexts.high_noise(),
				contexts.free()
			] =>
			[
				features.vibrating_mode()
			],
			[
				contexts.near_friend(),
				contexts.free()
			] =>
			[
				features.nearby_friend_message()
			],
			[
				contexts.day(),
			] =>
			[
				features.normal_mode()
			],
			[
				contexts.night(),
			] =>
			[
				features.dark_mode()
			],
			[
				contexts.work(),
			] =>
			[
				features.busy_message(),
				features.silent_mode(),
			],
			[
				contexts.school(),
			] =>
			[
				features.busy_message(),
				features.vibrating_mode()
			]
		}
	end

end