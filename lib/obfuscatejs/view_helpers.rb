def encode(s)
	URI::encode(s, [('A'..'z').to_a.join(''), ('0'..'9').to_a.join(''), ['!','#''$','%','&','*','+','-','/','=','?','^','_','`','{','|','}','~','.','@',' '].join('')].join(''))
end

module Obfuscatejs
	module ViewHelpers
		def obfuscate(str)
			raw "<span data-obfuscated='#{encode(str)}'></span>"
		end
		def obfuscate_email(ema, msg='', sub='', bod='')
			raw "<a data-obfuscated-email='#{encode(ema)}' data-obfuscated-message='#{encode(msg)}' data-obfuscated-subject='#{encode(sub)}' data-obfuscated-body='#{encode(bod)}'></a>"
		end
	end
end