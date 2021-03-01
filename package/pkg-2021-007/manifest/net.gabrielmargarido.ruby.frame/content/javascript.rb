# @module <javascript.rb>
class Javascript
	def image_performance(url, width,height, format,js_action)
		if format == false
			# format = (px)
			$init.puts("<img src=\"#{url}\" width=\"#{width.to_s}px\" height=\"#{height.to_s}px\" onclick=\"#{js_action}\">")
		else
			#format = (%)
			$init.puts("<img src=\"#{url}\" width=\"#{width.to_s}%\" height=\"#{height.to_s}%\" onclick=\"#{js_action}\">")
		end
	end
	
	# => Performance
	def performance(action,id)
		if id == nil or id == false then
			$init.puts("<div onclick=\"#{action}\">")
		else
			$init.puts("<div id=\"#{id}\" onclick=\"#{action}\"")
		end
	end
	def end_performance
		$init.puts("</div>")
	end

	# => Responsive
	def responsive(id,css)
		if id != nil and css != nil
			$init.puts("<div id=\"#{id}\" class=\"#{css}\">")
		else
			$init.puts("Error on instruction [responsive]")
		end
	end
	def end_responsive
		$init.puts("</div>")
	end
end