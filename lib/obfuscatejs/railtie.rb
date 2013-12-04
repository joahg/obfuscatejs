require 'obfuscatejs/view_helpers'
module Obfuscatejs
	class Railtie < Rails::Railtie
		initializer "obfuscatejs.view_helpers" do
			ActionView::Base.send :include, ViewHelpers
		end
	end
end