# @module <orgx.rb>
class Span
	# => SPAN attributes (opening)
	def lang(i)
		$init.puts("<span lang=\"#{i}\">")
	end
	#identification
	def id(i)
		$init.puts("<span id=\"#{i}\">")
	end
	#CSS style group
	def stl(i)
		$init.puts("<span style=\"#{i}\">")
	end
	#element title
	def ttl(i)
		$init.puts("<span title=\"#{i}\">")
	end
	#alternative text
	def alt(i)
		$init.puts("<span alt=\"#{i}\">")
	end
	# => DIV attributes (closing)
	def end_span
		$init.puts("</span>")
	end
end

class Groupx
	# => DIV attributes (opening)
	def lang(i)
		$init.puts("<div lang=\"#{i}\">")
	end
	#identification
	def id(i)
		$init.puts("<div id=\"#{i}\">")
	end
	#CSS style group
	def stl(i)
		$init.puts("<div style=\"#{i}\">")
	end
	#element title
	def ttl(i)
		$init.puts("<div title=\"#{i}\">")
	end
	#alternative text
	def alt(i)
		$init.puts("<div alt=\"#{i}\">")
	end
	# => DIV attributes (closing)
	def end_tag
		$init.puts("</div>")
	end
end