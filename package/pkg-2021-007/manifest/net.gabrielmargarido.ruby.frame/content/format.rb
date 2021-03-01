
# @module <format.rb>
class Format
	def header(css)
		$init.puts("<header class=\"#{css}\"")
	end
	def endheader
		$init.puts("<header>")
	end

	def footer(css)
		$init.puts("<footer class=\"#{css}\"")
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