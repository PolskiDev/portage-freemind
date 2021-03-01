# @module <javascript.rb>
class Javascript
	@squot = "\""
	
	def image_performance(id, url, width,height, format,js_action)
		if format == false
			# format = (px)
			$init.puts("<img src=\"#{url}\" id=#{@squot}#{id}#{@squot} width=\"#{width.to_s}px\" height=\"#{height.to_s}px\" onclick=\"#{js_action}\">")
		else
			#format = (%)
			$init.puts("<img src=\"#{url}\" id=#{@squot}#{id}#{@squot} width=\"#{width.to_s}%\" height=\"#{height.to_s}%\" onclick=\"#{js_action}\">")
		end
	end
	
	# => Performance
	def performance(id,action)
		$init.puts("<div id=#{@squot}#{id}#{@squot} onclick=\"#{action}\"")
	end
	def end_performance
		$init.puts("</div>")
	end

	# => Responsive
	def responsive(id,css)
		$init.puts("<div id=\"#{id}\" class=\"#{css}\">")
	end
	def end_responsive
		$init.puts("</div>")
	end
end