require "rubygems"
require "bundler"
Bundler.setup(:default, :test)
Bundler.require(:default, :test)

dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift dir + "/../lib"
require "minitest/spec"
require "minitest/autorun"
require "turn"

require "nullobject"
