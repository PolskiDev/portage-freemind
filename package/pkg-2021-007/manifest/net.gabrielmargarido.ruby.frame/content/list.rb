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
	# Long element
	def long
		$init.puts("<li>")
	end
	def end_long
		$init.puts("</li>")
	end

	# Short element
	def short(level, msg)
		if level > 0
			$init.puts("<li><h#{level}> #{msg} </h#{level}></li>")

		elsif level <= 0
			$init.puts("<li><p> #{msg} </p></li>")
		end
	end
end
