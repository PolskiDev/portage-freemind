# @module <scanner.rb>
class Scanner
	@squot = "\""
	
	def scanner(id, char_num,name,size,placeholder)
		tf = "text"
		if placeholder == nil
			#if *does not* exist a placeholder
			$init.puts("<input type=\"#{tf}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\" size=\"#{size.to_s}\" maxlength=\"#{char_num.to_s}\">")
		
		elsif placeholder != nil
			#If exists a placeholder
			$init.puts("<input type=\"#{tf}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\" size=\"#{size.to_s}\" maxlength=\"#{char_num.to_s}\" placeholder=\"#{placeholder}\">")
		end
	end
end