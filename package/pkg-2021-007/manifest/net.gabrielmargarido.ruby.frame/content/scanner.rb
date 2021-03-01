# @module <scanner.rb>
class Scanner
	def scanner(char_num,name,size,placeholder)
		tf = "text"
		if placeholder == nil
			#if *does not* exist a placeholder
			$init.puts("<input type=\"#{tf}\" name=\"#{name}\" size=\"#{size}\" maxlength=\"#{char_num.to_s}\">")
		
		elsif placeholder != nil
			#If exists a placeholder
			$init.puts("<input type=\"#{tf}\" name=\"#{name}\" size=\"#{size}\" maxlength=\"#{char_num.to_s}\" placeholder=\"#{placeholder}\">")
		end
	end
end