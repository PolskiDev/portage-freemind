# Mandatory ID

# @module <basics.rb>
class Basics

	@squot = "\""
	
	# => First group (opening)
	def section(id, css)
		$init.puts("<section id=\"#{id}\" class=\"#{css}\">")
	end
	def group(id, align,css) # [CHECKED]
		# => Default alignment is left.
		if css == nil or css == false
			$init.puts("<div align=\"#{align}\" id=#{@squot}#{id}#{@squot}>")
		else
			$init.puts("<div align=\"#{align}\" class=\"#{css}\" id=#{@squot}#{id}#{@squot}>")
		end
	end

	# => First group (closing)
	def end_section
		$init.puts("</section>")
	end
	def end_group
		$init.puts("</div>")
	end

	# => Second group (opening)
	def navmenu(id, css)
		if css == nil or css == false
			$init.puts("<nav id=#{@squot}#{id}#{@squot}>")
		else
			$init.puts("<nav iid=#{@squot}#{id}#{@squot} class=\"#{css}\">")
		end

	end

	# => Second group (closing)
	def end_navmenu
		$init.puts("</nav>")
	end

	# => Webpage settings
	def setCaption(caption)
		$init.puts("<title>#{caption}</title>")
	end
	def set_caption(caption)
		setCaption(caption)
	end

	# => Jump lines
	def jumpLine(i)
		if i == nil
			$init.puts("<br>")
		else
			counter = 0
			while counter < i
				$init.puts "<br>"
				counter = counter + 1
			end
		end
	end
	def jump_line(i)
		jumpLine(i)
	end

	# => Set the icon
	def def_icon(url)
		$init.puts("<link rel=\"shortcut icon\" href=\"#{url}\"/>")
	end

	# => Set page character format to UTF-8
	def def_utf8
		$init.puts("<meta charset=\"utf-8\">")
	end
	
	# => Insert an HTML piece of code as a string,
	# *example: insert_html('<p>PARAGRAPH</p>')
	def insert_html(string)
		$init.puts(string)
	end

	# => Set page character format to another one
	#    *(Only on Ruby Distribution)
	def def_charset(charset)
		$init.puts("<meta charset=\"#{charset}\">")
	end
end