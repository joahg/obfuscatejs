require 'obfuscatejs/railtie' if defined?(Rails)
require 'obfuscatejs/version'

module Obfuscatejs
	module Rails
		class Engine < ::Rails::Engine
		end
	end
end