require 'singleton'

require_relative '../../../src/application_domain/abstract_context'
require_relative '../../../src/application_domain/context'
require_relative '../../../src/application_domain/context_model_declaration'

#
# Class declaring the context model of the app
#
# Author: Benoît Duhoux
# Date: 2021
#
class AppContextModelDeclaration < ContextModelDeclaration

	include Singleton

	def initialize()
		super()

		_define_date_context()
		_define_battery_level_context()
		_define_noise_level_context()
		_define_location_context()
		_define_time_context()
		_define_status_context()

		@root_context.relation :Mandatory, [@date, @battery_level, @noise_level, @location, @time, @status]
	end

	private

	def _define_date_context()
		abstract_context :@date, 'Date'
		context :@friend_birthday, 'Friends birthday'

		@date.relation :Optional, [@friend_birthday]
	end

	def _define_battery_level_context()
		abstract_context :@battery_level, 'Battery level'
		context :@low_battery, 'Low battery'

		@battery_level.relation :Optional, [@low_battery]
	end

	def _define_noise_level_context()
		abstract_context :@noise_level, 'Noise level'
		context :@low_noise, 'Low noise'
		context :@high_noise, 'High noise'

		@noise_level.default @low_noise
		@noise_level.relation :Alternative, [@low_noise, @high_noise]
	end

	def _define_location_context()
		abstract_context :@location, 'Location'
		context :@near_friend, 'Near friend'

		@location.relation :Optional, [@near_friend]
	end

	def _define_time_context()
		abstract_context :@time, 'Time'
		context :@day, 'Day'
		context :@night, 'Night'

		@time.default @day
		@time.relation :Alternative, [@day, @night]
	end

	def _define_status_context()
		abstract_context :@status, 'Status'
		context :@free, 'Free'
		context :@work, 'Work'
		context :@school, 'School'

		@status.default @free
		@status.relation :Alternative, [@free, @work, @school]
	end
end