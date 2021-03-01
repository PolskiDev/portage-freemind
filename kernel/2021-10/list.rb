# @module <list.rb>
class UnList
	def unordered_list
		$init.puts("<ul>")
	end

	def end_list
		$init.puts("</ul>")
	end
end

class OrList
	def ordered_list
		$init.puts("<ol>")
	end
	def end_list
		$init.puts("</ol>")
	end
end

class ListElement
	@squot = "\""
	# Long element
	def long
		$init.puts("<li>")
	end
	def end_long
		$init.puts("</li>")
	end

	# Short element
	def short(id, level,msg)
		if level > 0
			$init.puts("<li><h#{level.to_s} id=#{@squot}#{id}#{@squot}> #{msg} </h#{level.to_s}></li>")

		elsif level <= 0
			$init.puts("<li><p id=#{@squot}#{id}#{@squot}> #{msg} </p></li>")
		end
	end
end
