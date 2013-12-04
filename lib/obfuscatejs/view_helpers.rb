module Obfuscatejs
	module ViewHelpers
		def obfuscate(s)
			t = URI::encode(s, [('A'..'z').to_a.join(''), ('0'..'9').to_a.join(''), ['!','#''$','%','&','*','+','-','/','=','?','^','_','`','{','|','}','~','.','@'].join('')].join(''))
			raw "<span data-obfuscated='#{t}'></span>"
		end
	end
end