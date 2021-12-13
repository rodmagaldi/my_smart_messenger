# Include this file before all the others to be sure that all information are sent to the tool.
require_relative 'options_interpreter'
# require_relative '../../src/ui_library/ui_manager'
# require_relative '../../src/ui_library/fxruby_library/fx_setup'
require_relative '../../src/bootstrap'

#
# Script to launch the app
#
# Author: Benoît Duhoux
# Date: 2021
#
if $PROGRAM_NAME == __FILE__
  SmartMessenger.run()
end