
# @module <format.rb>
class Format
	@squot = "\""
	
	# Header
	def header(id, css)
		if id == nil or id == false
			$init.puts("<header class=\"#{css}\"")
		else
			$init.puts("<header id=#{@squot}#{id}#{@squot} class=\"#{css}\"")
		end

		
	end
	def endheader
		$init.puts("<header>")
	end
	
	# Footer
	def footer(id, css)
		if id == nil or id == false
			$init.puts("<footer class=\"#{css}\"")
		else
			$init.puts("<footer id=#{@squot}#{id}#{@squot} class=\"#{css}\"")
		end

		
	end
	def endfooter
		$init.puts("<footer>")
	end

	# => Including CSS and Javascript files
	def using(prefix, url)
		# CSS description
		if prefix == "css"
			$init.puts("<link rel=\"stylesheet\" href=\"#{url}\">")
		
		# Javascript description
		elsif prefix == "js" or prefix == "javascript"
			$init.puts("<script type=\"text/javascript\" src=\"#{url}\"></script>")
		
		# TypeScript description
		elsif prefix == "ts" or prefix == "typescript"
			$init.puts("<script type=\"text/javascript\" src=\"#{url}\"></script>")			
		end
				
	end
	
end