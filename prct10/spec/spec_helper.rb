# The lines added to coverall service
require 'coveralls'
Coveralls.wear!

$LOAD_PATH.unshift File.expand_path('../../lib',__FILE__)
require 'prct10'
